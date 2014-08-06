package com.lishibook.outbean;

import java.util.List;

import com.lishibook.entity.ResourceFocusgroup;

public class FocusGroupListBean extends BaseBean {
	
	private List<ResourceFocusgroup> groups;
	
	public FocusGroupListBean(){
		super(1, "执行成功");
	}

	public FocusGroupListBean(int status, String message){
		super(status, message);
	}
	
	public List<ResourceFocusgroup> getGroups() {
		return groups;
	}

	public void setGroups(List<ResourceFocusgroup> groups) {
		this.groups = groups;
	}
}
