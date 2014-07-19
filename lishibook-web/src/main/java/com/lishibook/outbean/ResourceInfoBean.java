package com.lishibook.outbean;


import com.lishibook.entity.Resource;

public class ResourceInfoBean extends BaseBean {

	private Resource info;

	public ResourceInfoBean(){}
	
	public ResourceInfoBean(int status, String message){
		super(status, message);
	}
	
	public ResourceInfoBean(int status, String message, Resource info){
		super(status, message);
		this.info = info;
	}
	
	public Resource getInfo() {
		return info;
	}

	public void setInfo(Resource info) {
		this.info = info;
	}
}
