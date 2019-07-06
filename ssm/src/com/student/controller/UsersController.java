package com.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.student.pojo.Users;
import com.student.service.UsersService;

/**
 * 控制层实现
 * @author Administrator
 *
 */
@Controller
public class UsersController{
	
	@Autowired
	private UsersService usersservice;
	
	@RequestMapping("login")
	public ModelAndView login(String name,String password){
		ModelAndView mv = new ModelAndView();
		Users users = usersservice.login(name,password);
		if(users != null){
			mv.addObject("users", users);
			mv.setViewName("main");
		}else{
			mv.setViewName("login");
		}
		return mv;
	}
	
	@RequestMapping("reg")
	public ModelAndView reg(Users users){
		ModelAndView mav = new ModelAndView();
		int cot = usersservice.count(users.getName());
		if(cot>=1){
			mav.addObject("message","用户名已存在");
            mav.setViewName("reg");
		}else{
			usersservice.reg(users);
		    mav.setViewName("login");
		}
	return mav;
		
	}
}