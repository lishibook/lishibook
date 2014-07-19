package com.lishibook.outbean;

public class ResourceAddBean extends BaseBean {
	
	private int resourceId;

	public ResourceAddBean(){}
	
	public ResourceAddBean(int status, String message){
		super(status, message);
	}
	
	public ResourceAddBean(int status, String message, int resourceId){
		super(status, message);
		this.resourceId = resourceId;
	}

	public int getResourceId() {
		return resourceId;
	}

	public void setResourceId(int resourceId) {
		this.resourceId = resourceId;
	}
	
}
