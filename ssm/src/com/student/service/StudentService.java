package com.student.service;

import java.util.List;

import com.student.pojo.Student;

/**
 * Student业务层接口
 * @author Administrator
 *
 */
public interface StudentService {
	
	//查询所有学生信息接口
	List<Student> listsel();
	
	//插入学生信息接口
	int addStu(Student student);
	
	//查询单跳信息
	Student Stusel(int id);
	
	//修改学生信息接口
	int updateStu(Student student);
	
	//删除学生信息接口
	void deleteStu(int id);
	
}
