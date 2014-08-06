package com.lishibook.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "resource_focusgroup")
public class ResourceFocusgroup implements Serializable{
    
	private static final long serialVersionUID = 8323269932821476938L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;
    
    private Integer rid;
    
    private String name;
    
    private Date time;
    
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
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public Date getTime() {
        return time;
    }
    
    public void setTime(Date time) {
        this.time = time;
    }
}