package com.lishibook.resource;

import java.util.Date;

import javax.inject.Inject;
import javax.ws.rs.CookieParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.lishibook.dao.ResourceDao;
import com.lishibook.entity.Resource;
import com.lishibook.exception.LBException;
import com.lishibook.inbean.ResourceInBean;
import com.lishibook.outbean.BaseBean;
import com.lishibook.outbean.ResourceAddBean;
import com.lishibook.outbean.ResourceInfoBean;

@Produces(MediaType.APPLICATION_JSON)
@Path("/resource")
public class ResourceService {
	
	private static Logger logger = LoggerFactory.getLogger(ResourceService.class);
	
	@Inject
	private ResourceDao resourceDao;
	
	@GET
	@Path("/show/{resourceId}")
	public ResourceInfoBean get(@PathParam("resourceId") int resourceId){
		logger.info("Enter ResourceService.get");
		
		Resource resource = resourceDao.get(resourceId);
		
		ResourceInfoBean resourceInfoBean = new ResourceInfoBean();
		if(resource != null){
			resourceInfoBean.setStatus(1);
		} else {
			resourceInfoBean.setStatus(-1);
		}
		
		resourceInfoBean.setInfo(resource);
		
		logger.info("Exit ResourceService.get");
		return resourceInfoBean;
	}
	
	@POST
	@Path("/add")
	public BaseBean add(@CookieParam("userid") int userid, ResourceInBean resource){
		logger.info("Enter ResourceService.add");
		
		Subject currentUser = SecurityUtils.getSubject();
		
		if (!currentUser.hasRole("admin")) {
			throw new LBException("no permission");
		}
		
		Resource entity = new Resource();
		entity.setName(resource.getName());
		Date date = new Date();
		entity.setCreatetime(date);
		entity.setLastedittime(date);
		entity.setIconurl(resource.getIconurl());
		entity.setDescription(resource.getDescription());
		entity.setContent(resource.getContent());
		entity.setCreatorid(userid);
		entity.setLasteditid(userid);
		entity.setViews(0);
		resourceDao.save(entity);
		
		ResourceAddBean result = new ResourceAddBean(1, "资源添加成功", entity.getId());
		return result;
	}
}