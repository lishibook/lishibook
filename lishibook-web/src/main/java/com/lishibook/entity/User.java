package com.lishibook.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User implements Serializable {
	
	private static final long serialVersionUID = -7392806712585814449L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;
    
    private String email;
    
    private String username;

    private String password;

    private Integer gender;
    
    private Date birthday;
    
    private String iconid;
    
    private String regip;
    
    private Date regtime;
    
    private String lastip;
    
    private Date lasttime;
    
    private String telephone;
    
    private Integer admin;
    
    private Integer topics;
    
    private Integer collection;
    
    private Integer focususers;
    
    private Integer befocused;
    
    private Integer checkup;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getIconid() {
		return iconid;
	}

	public void setIconid(String iconid) {
		this.iconid = iconid;
	}

	public String getRegip() {
		return regip;
	}

	public void setRegip(String regip) {
		this.regip = regip;
	}

	public Date getRegtime() {
		return regtime;
	}

	public void setRegtime(Date regtime) {
		this.regtime = regtime;
	}

	public String getLastip() {
		return lastip;
	}

	public void setLastip(String lastip) {
		this.lastip = lastip;
	}

	public Date getLasttime() {
		return lasttime;
	}

	public void setLasttime(Date lasttime) {
		this.lasttime = lasttime;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Integer getAdmin() {
		return admin;
	}

	public void setAdmin(Integer admin) {
		this.admin = admin;
	}

	public Integer getTopics() {
		return topics;
	}

	public void setTopics(Integer topics) {
		this.topics = topics;
	}

	public Integer getCollection() {
		return collection;
	}

	public void setCollection(Integer collection) {
		this.collection = collection;
	}

	public Integer getFocususers() {
		return focususers;
	}

	public void setFocususers(Integer focususers) {
		this.focususers = focususers;
	}

	public Integer getBefocused() {
		return befocused;
	}

	public void setBefocused(Integer befocused) {
		this.befocused = befocused;
	}

	public Integer getCheckup() {
		return checkup;
	}

	public void setCheckup(Integer checkup) {
		this.checkup = checkup;
	}

}