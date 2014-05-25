package com.lishibook.resource;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.lishibook.dao.ResourceDao;
import com.lishibook.entity.Resource;

@Produces(MediaType.APPLICATION_JSON)
@Path("/resource")
public class ResourceService {
	
	@Inject
	private ResourceDao resourceDao;
	
	@GET
	@Path("/{resourceId}")
	public Resource get(@PathParam("resourceId") int resourceId){
		return resourceDao.get(resourceId);
	}
}
