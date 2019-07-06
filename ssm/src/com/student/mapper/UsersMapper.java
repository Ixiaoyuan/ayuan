package com.student.mapper;

import org.apache.ibatis.annotations.Param;

import com.student.pojo.Users;

/**
 * 持久映射接口
 * @author Administrator
 *
 */
public interface UsersMapper {	
	//查询用户和密码
	public Users findUserByNameAndPwd(@Param("name")String name,@Param("password")String password);
	
	//插入数据
	public int addUsers(Users users);
    
	//记录条数
	public int count(@Param("name")String name);
}
