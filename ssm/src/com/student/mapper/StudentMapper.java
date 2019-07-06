package com.student.mapper;

import java.util.List;

import com.student.pojo.Student;

public interface StudentMapper {
	
	//查询所有学生信息
	public List<Student> listsel(); 
	
	//增加学生信息
	public int addStu(Student student);
	
	//查询单条数据
    public Student Stusel(int id);
	
	//修改学生信息
	public int updateStu(Student Student);
	
	//删除
	public void deleteStu(int id);
	
}
