package com.lishibook.resource;

import javax.inject.Inject;
import javax.ws.rs.CookieParam;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.NewCookie;
import javax.ws.rs.core.Response;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.lishibook.dao.UserDao;
import com.lishibook.entity.User;
import com.lishibook.outbean.BaseResult;

@Produces(MediaType.APPLICATION_JSON)
@Path("/user")
@Service
public class UserService {
	
	private static Logger logger = LoggerFactory.getLogger(UserService.class);
	
	private static final String SESSION_USERID = "userid";
	
	@Inject
	private UserDao userDao;
	
	@GET
	@Path("/get")
	public User get(@CookieParam("userid") int userid){
		
		User user = userDao.get(userid);
		
		if(user != null){
			//can expose password;
			user.setPassword("");
		}
		
		return user;
	}
	
	@POST
	@Path("/login")
	public Response login(@FormParam("email") String email, @FormParam("password") String password) {
		
		BaseResult result = new BaseResult();
		
		Subject currentUser = SecurityUtils.getSubject();
		
		if(currentUser.isAuthenticated()){//已登录
			result.setStatus(1);
			result.setMessage("用户已登录！");
		} else {
			UsernamePasswordToken token;
			try {
				token = new UsernamePasswordToken(email, password);
				currentUser.login(token);
				
				User user = userDao.getUserByEmail(email);
				
				result.setStatus(1);
				result.setMessage("登录成功！");
				logger.info("用户 " + email + "成功登录！");
				return Response.status(200).entity(result).cookie(new NewCookie("userid", String.valueOf(user.getId()))).build();
			} catch(AuthenticationException e){
				logger.info(e.toString());

				result.setStatus(-1);
				result.setMessage("登录失败！");
			}
			
		}
		
		return Response.status(200).entity(result).build();
	}
	
	@GET
	@Path("/logout")
	public BaseResult logout(@CookieParam("userid") int userid) {
		BaseResult result = new BaseResult();
		
		Subject currentUser = SecurityUtils.getSubject();
		currentUser.logout();
		
		result.setStatus(1);
		result.setMessage("注销成功！");
		
		logger.info("用户 " + userid + "注销登录！");
		return result;
	}
}
