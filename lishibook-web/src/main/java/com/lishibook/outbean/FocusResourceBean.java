package com.lishibook.outbean;

/**
 * 资源关注的其他资源的有关信息
 * @author taotao
 *
 */
public class FocusResourceBean {
	
	private int id;//focus id
	
	private int fromResourceId;
	
	private int focusResourceId;//所关注的资源
	
	private int focusGroup;//从属于关注组
	
	private String focusDescription;//关注描述
	
	private String focusResourceName;//关注资源的名字
	
	private String iconUrl;//资源对应 icon 的URL
	
	private String resourceDesc;//关注资源的描述
	
	private int views;//关注资源已经被访问的次数

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public int getFromResourceId() {
		return fromResourceId;
	}

	public void setFromResourceId(int fromResourceId) {
		this.fromResourceId = fromResourceId;
	}

	public int getFocusResourceId() {
		return focusResourceId;
	}

	public void setFocusResourceId(int focusResourceId) {
		this.focusResourceId = focusResourceId;
	}

	public int getFocusGroup() {
		return focusGroup;
	}

	public void setFocusGroup(int focusGroup) {
		this.focusGroup = focusGroup;
	}

	public String getFocusDescription() {
		return focusDescription;
	}

	public void setFocusDescription(String focusDescription) {
		this.focusDescription = focusDescription;
	}

	public String getFocusResourceName() {
		return focusResourceName;
	}

	public void setFocusResourceName(String focusResourceName) {
		this.focusResourceName = focusResourceName;
	}

	public String getIconUrl() {
		return iconUrl;
	}

	public void setIconUrl(String iconUrl) {
		this.iconUrl = iconUrl;
	}

	public String getResourceDesc() {
		return resourceDesc;
	}

	public void setResourceDesc(String resourceDesc) {
		this.resourceDesc = resourceDesc;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	
	
}
