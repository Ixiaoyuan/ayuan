package com.student.pojo;

/**
 * 实体类
 * @author Administrator
 *
 */
public class Users {

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	//编号
	private String id;
	//用户名
	private String name;
	//密码
	private String password;
}
