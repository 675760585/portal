package com.awh.controller;

import java.util.List;

import org.protal.dto.business.Users;
import org.protal.service.api.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsersController extends BaseController {
	
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/show/userinfo")
	public ModelAndView  queryUserInfo() {
		List<Users> list=userService.queryAllUser();
		for(Users user:list){
			System.out.println("用户名称:"+user.getLoginname());
		}
		return new ModelAndView("index", "lists", list);  
	}
}
