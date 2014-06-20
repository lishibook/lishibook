package com.lishibook.jsonbean;

abstract class BaseBean <T>{
	
	private int status;// 返回 -1：失败；1：成功
	
	private T info;

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public T getInfo() {
		return info;
	}

	public void setInfo(T info) {
		this.info = info;
	}
	
}
