package com.student.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.mapper.UsersMapper;
import com.student.pojo.Users;
import com.student.service.UsersService;

/**
 * Users业务层
 * @author Administrator
 *
 */
@Service
public class UserServiceimpl implements UsersService{
	
	@Autowired
	private UsersMapper usersmapper;

	@Override
	public Users login(String name, String password) {
		
		return usersmapper.findUserByNameAndPwd(name, password);
	}

	@Override
	public int reg(Users users) {
			return usersmapper.addUsers(users);
		}

	@Override
	public int count(String name) {
		return usersmapper.count(name);
	}
}

