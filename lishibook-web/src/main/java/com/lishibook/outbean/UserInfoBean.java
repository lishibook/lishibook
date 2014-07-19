package com.lishibook.outbean;

import com.lishibook.entity.User;

/**
 * 用于获取用户信息
 * @author mengtao
 *
 */
public class UserInfoBean extends BaseBean {

	private User info;

	public UserInfoBean(){}
	
	public UserInfoBean(int status, String message){
		super(status, message);
	}
	
	public UserInfoBean(int status, String message, User info){
		super(status, message);
		this.info = info;
	}
	
	public User getInfo() {
		return info;
	}

	public void setInfo(User info) {
		this.info = info;
	}
	
}
