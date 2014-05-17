package com.lishibook.resource;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/test")
public class TestService {
    
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    @Path("/world")
    public String getHello() {
        return "hi tao!";
    }

}