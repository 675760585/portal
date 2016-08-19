package com.awh.controller;

import org.protal.service.api.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController extends BaseController {
	
	
	@Autowired
	private UserService userService;
	
	/**
	 * 首页
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/index")
	public ModelAndView  queryUserInfo() {
//		List<Users> list=userService.queryAllUser();
//		for(Users user:list){
//			System.out.println("用户名称:"+user.getLoginname());
//		}
//		return new ModelAndView("index", "lists", list); 
		return new ModelAndView("index");
	}
	
	/**
	 * 登入
	 * @return
	 */
	@RequestMapping("login")
	public ModelAndView login(){
		return new ModelAndView("login");
	}
	
	/**
	 * 注册
	 * @return
	 */
	@RequestMapping("register")
	public ModelAndView register(){
		return new ModelAndView("register");
	}
	
	/**
	 * 电影详情页面
	 * @return
	 */
	@RequestMapping("single")
	public ModelAndView single(){
		return new ModelAndView("single");
	}
	
	/**
	 * 电影列表
	 * @return
	 */
	@RequestMapping("movie")
	public ModelAndView movie(){
		return new ModelAndView("movie");
	}
	
}
