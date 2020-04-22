package com.lzy.pojo;

public class Users {
	private Integer id;
	private String username;
	private  String password;
	private String salt;
	private String status;
	private Integer did;
	public Users() {
		super();
	}
	public Users(Integer id, String username, String password, String salt, String status, Integer did) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.salt = salt;
		this.status = status;
		this.did = did;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
	}
	
	

}
