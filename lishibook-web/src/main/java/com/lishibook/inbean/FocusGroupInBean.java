package com.lishibook.inbean;

/**
 * 提交的关注组信息
 * @author taotao
 *
 */
public class FocusGroupInBean {
	
	private int rid;
	
	private String groupName;
	
	private String groupDesc;

	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getGroupDesc() {
		return groupDesc;
	}

	public void setGroupDesc(String groupDesc) {
		this.groupDesc = groupDesc;
	}
	
}
