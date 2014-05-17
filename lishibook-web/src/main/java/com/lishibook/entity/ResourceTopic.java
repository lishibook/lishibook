package com.lishibook.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "resource_topic")
public class ResourceTopic implements Serializable {
	
	private static final long serialVersionUID = 8903731270109481858L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;
    
    private Integer rid;
    
    private String title;
    
    private Integer authorid;
    
    private Date time;
    
    private Date lastedit;
    
    private Integer views;
    
    private Integer replys;
    
    private Integer like;
    
    private Integer hate;
    
    private String content;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getAuthorid() {
		return authorid;
	}

	public void setAuthorid(Integer authorid) {
		this.authorid = authorid;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Date getLastedit() {
		return lastedit;
	}

	public void setLastedit(Date lastedit) {
		this.lastedit = lastedit;
	}

	public Integer getViews() {
		return views;
	}

	public void setViews(Integer views) {
		this.views = views;
	}

	public Integer getReplys() {
		return replys;
	}

	public void setReplys(Integer replys) {
		this.replys = replys;
	}

	public Integer getLike() {
		return like;
	}

	public void setLike(Integer like) {
		this.like = like;
	}

	public Integer getHate() {
		return hate;
	}

	public void setHate(Integer hate) {
		this.hate = hate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
    
    
}