package com.lishibook.exception;

import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.Response;

import com.lishibook.jsonbean.BaseResultBean;

public class LBException extends WebApplicationException {

	private static final long serialVersionUID = 5439537796620333182L;

	public LBException() {
		super(Response.status(200).entity(new BaseResultBean(-1, "LBException")).build());
	}
	
	public LBException(String message) {
		super(Response.status(200).entity(new BaseResultBean(-1, message)).build());
	}
}