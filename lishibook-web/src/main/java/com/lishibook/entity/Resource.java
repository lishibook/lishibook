package com.lishibook.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "resource")
public class Resource implements Serializable{
    
	private static final long serialVersionUID = 554176719007574567L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;
    
    private String name;

    private String iconname;
    
    private String iconurl;
    
    private String description;
    
    private Integer creatorid;
    
    private Date createtime;
    
    private Integer lasteditid;
    
    private Date lastedittime;
    
    private Integer views;
    
    private String content;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIconname() {
		return iconname;
	}

	public void setIconname(String iconname) {
		this.iconname = iconname;
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

	public Integer getCreatorid() {
		return creatorid;
	}

	public void setCreatorid(Integer creatorid) {
		this.creatorid = creatorid;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Integer getLasteditid() {
		return lasteditid;
	}

	public void setLasteditid(Integer lasteditid) {
		this.lasteditid = lasteditid;
	}

	public Date getLastedittime() {
		return lastedittime;
	}

	public void setLastedittime(Date lastedittime) {
		this.lastedittime = lastedittime;
	}

	public Integer getViews() {
		return views;
	}

	public void setViews(Integer views) {
		this.views = views;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}