package com.lishibook.inbean;

/**
 * 资源的基本信息
 * @author mengtao
 *
 */
public class ResourceInBean {
	
	private String name;

    private String iconurl;
    
    private String description;
    
    private String content;
    
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIconurl() {
		return iconurl;
	}

	public void setIconurl(String iconurl) {
		this.iconurl = iconurl;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
