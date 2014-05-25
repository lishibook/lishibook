package com.lishibook.resource;

import java.security.NoSuchAlgorithmException;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.CookieParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.NewCookie;
import javax.ws.rs.core.Response;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.lishibook.dao.UserDao;
import com.lishibook.entity.User;
import com.lishibook.jsonbean.BaseResultBean;
import com.lishibook.jsonbean.LoginBean;
import com.lishibook.utils.EncryptUtils;

@Produces(MediaType.APPLICATION_JSON)
@Path("/user")
@Service
public class UserService {
	
	private static Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Inject
	private UserDao userDao;
	
	@GET
	@Path("/get")
	public User get(@CookieParam("userid") int userid){
		
		User user = userDao.get(userid);
		Subject currentUser = SecurityUtils.getSubject();
		
		if(currentUser.isAuthenticated()){//已登录
			System.out.println(currentUser);
		} 
		if(user != null){
			//can not expose password;
			user.setPassword("");
		}
		
		return user;
	}
	
	@POST
	@Path("/login")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response login(LoginBean loginBean) {
		
		BaseResultBean result = new BaseResultBean();
		
		Subject currentUser = SecurityUtils.getSubject();
		
		if(currentUser.isAuthenticated()){//已登录
			result.setStatus(1);
			result.setMessage("用户已登录！");
		} else {
			UsernamePasswordToken token;
			try {
				String email = loginBean.getEmail();
				String encryptedPassword = EncryptUtils.encrypt(loginBean.getPassword());
				token = new UsernamePasswordToken(email, encryptedPassword);
				currentUser.login(token);
				
				User user = userDao.getUserByEmail(loginBean.getEmail());
				Session session = currentUser.getSession();
				String s = (String)session.getId();
				result.setStatus(1);
				result.setMessage("登录成功！");
				logger.info("用户 " + loginBean.getEmail() + "成功登录！");
				
				//We must set JSESSIONID here for shiro to work correctly.
				return Response.status(200).entity(result).cookie(new NewCookie("userid", String.valueOf(user.getId())), new NewCookie("JSESSIONID", s)).build();
			} catch(AuthenticationException e){
				logger.info(e.toString());

				result.setStatus(-1);
				result.setMessage("登录失败！");
			} catch (NoSuchAlgorithmException e) {
				logger.error(e.toString());
				result.setStatus(-1);
				result.setMessage("登录失败！");
			}
			
		}
		
		return Response.status(200).entity(result).build();
	}
	
	@GET
	@Path("/logout")
	public Response logout(@CookieParam("userid") int userid) {
		BaseResultBean result = new BaseResultBean();
		
		Subject currentUser = SecurityUtils.getSubject();
		currentUser.logout();
		
		result.setStatus(1);
		result.setMessage("注销成功！");
		
		logger.info("用户 " + userid + "注销登录！");
		return Response.status(200).entity(result).cookie((NewCookie)null).build();
	}
}
