package com.lishibook.outbean;

public class BaseBean{
	
	private int status;// 返回 -1：失败；1：成功

	private String message;
	
	public BaseBean(){}
	
	public BaseBean(int status, String message){
		this.status = status;
		this.message = message;
	}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
