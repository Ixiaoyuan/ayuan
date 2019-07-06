package com.student.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.mapper.StudentMapper;
import com.student.pojo.Student;
import com.student.service.StudentService;

/**
 * Student业务层
 * @author Administrator
 *
 */
@Service
public class StudentServiceimpl implements StudentService{

	@Autowired
	private StudentMapper mapper;
	
	@Override
	public List<Student> listsel() {
		
		return mapper.listsel();
	}

	@Override
	public int addStu(Student student) {
		return mapper.addStu(student);
	}
	
	@Override
	public Student Stusel(int id) {
		return mapper.Stusel(id);
	}

	@Override
	public int updateStu(Student student) {
		
		return mapper.updateStu(student);
	}

	@Override
	public void deleteStu(int id) {
		mapper.deleteStu(id);
	}

}
