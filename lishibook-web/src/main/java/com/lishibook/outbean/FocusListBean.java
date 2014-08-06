package com.lishibook.outbean;

import java.util.List;

/**
 * 关注的资源列表
 * @author Administrator
 *
 */
public class FocusListBean extends BaseBean {
	
	private List<FocusResourceBean> focuses;
	
	public FocusListBean(){}

	public FocusListBean(int status, String message){
		super(status, message);
	}

	public List<FocusResourceBean> getFocuses() {
		return focuses;
	}

	public void setFocuses(List<FocusResourceBean> focuses) {
		this.focuses = focuses;
	}
}
