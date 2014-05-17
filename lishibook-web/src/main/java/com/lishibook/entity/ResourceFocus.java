package com.lishibook.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "resource_focus")
public class ResourceFocus implements Serializable{
    
	private static final long serialVersionUID = -5724023081150519619L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private Integer fromrid;

    private Integer torid;

    private Integer groupid;

    private String desc;

    private Date time;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getFromrid() {
		return fromrid;
	}

	public void setFromrid(int fromrid) {
		this.fromrid = fromrid;
	}

	public int getTorid() {
		return torid;
	}

	public void setTorid(int torid) {
		this.torid = torid;
	}

	public int getGroupid() {
		return groupid;
	}

	public void setGroupid(int groupid) {
		this.groupid = groupid;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
}