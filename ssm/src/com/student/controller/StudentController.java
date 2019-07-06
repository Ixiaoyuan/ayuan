package com.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.student.pojo.Student;
import com.student.service.StudentService;


@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentservice;
	
	@RequestMapping("lis")
	public ModelAndView lis(){
		ModelAndView mv=new ModelAndView();
		List<Student> ls=studentservice.listsel();
			mv.addObject("lists",ls);
			mv.setViewName("Stusel");
		return mv;		
	}
	@RequestMapping("Stuinsert")
	public ModelAndView Stuinsert(Student student){
		ModelAndView mv=new ModelAndView();
		      int stu =studentservice.addStu(student);
		    	mv.addObject(stu);
		    	mv.setViewName("Striset");
		return mv;
	}

	@RequestMapping("Stuselone")
	public ModelAndView Stuselone(int id){
		ModelAndView mv=new ModelAndView();
		     Student st=studentservice.Stusel(id);
		     mv.addObject("st",st);
		     mv.setViewName("StuUpdate");
		return mv;		
	}
	
	@RequestMapping("StudentUpdate")
	public ModelAndView StudentUpdate(Student student){
		ModelAndView mv = new ModelAndView();
	            int sd=studentservice.updateStu(student);
	            mv.addObject("sd",sd);
	            mv.setViewName("StuUpdate");
		return mv;
	}
	
	@RequestMapping("Studentdelete")
	public ModelAndView Studentdelete(int id){
		ModelAndView mv=new ModelAndView();
		 studentservice.deleteStu(id);
		 mv.setViewName("redirect:lis");
		return mv;
		
	}
	
}
