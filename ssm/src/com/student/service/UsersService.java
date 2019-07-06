package com.student.service;

import com.student.pojo.Users;

/**
 * Users业务接口
 * @author Administrator
 *
 */

public interface UsersService {
	 //用户登录接口
	 Users login(String name, String password);
	 
	 //用户注册接口
	 int reg(Users users);
	 
	 //用户是否已注册接口
	 int count(String name);
}
