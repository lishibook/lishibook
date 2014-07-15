package com.lishibook.resource;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.lishibook.dao.ResourceDao;
import com.lishibook.entity.Resource;
import com.lishibook.jsonbean.ResourceInfoBean;

@Produces(MediaType.APPLICATION_JSON)
@Path("/resource")
public class ResourceService {
	
	private static Logger logger = LoggerFactory.getLogger(ResourceService.class);
	
	@Inject
	private ResourceDao resourceDao;
	
	@GET
	@Path("/{resourceId}")
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
}