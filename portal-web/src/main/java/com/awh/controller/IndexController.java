package com.awh.controller;

import org.portal.service.api.UserService;
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
	 * web-首页
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/index")
	public ModelAndView  index() {
//		List<Users> list=userService.queryAllUser();
//		for(Users user:list){
//			System.out.println("用户名称:"+user.getLoginname());
//		}
//		return new ModelAndView("index", "lists", list); 
		return new ModelAndView("index");
	}
	
	
	
	/**
	 * web-分页页面
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/sort")
	public ModelAndView  sort() {
		return new ModelAndView("sort");
	}
	
	/**
	 * web-登入
	 * @return
	 */
	@RequestMapping("login")
	public ModelAndView login(){
		return new ModelAndView("login");
	}
	
	/**
	 * web-注册
	 * @return
	 */
	@RequestMapping("register")
	public ModelAndView register(){
		return new ModelAndView("register");
	}
	
	/**
	 * web-电影详情页面
	 * @return
	 */
	@RequestMapping("single")
	public ModelAndView single(){
		return new ModelAndView("single");
	}
	
	/**
	 * web-电影列表
	 * @return
	 */
	@RequestMapping("movie")
	public ModelAndView movie(){
		return new ModelAndView("movie");
	}
	
	/**
	 * m站-首页
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/m-index")
	public ModelAndView  mindex() {
		return new ModelAndView("m/index");
	}
	
	/**
	 * m站-关于
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/m-about")
	public ModelAndView  mabout() {
		return new ModelAndView("m/about");
	}
	
	/**
	 * m站-最新影讯
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/m-news")
	public ModelAndView  newsMovie() {
		return new ModelAndView("m/news");
	}
	
	/**
	 * m站-分类
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/m-sort")
	public ModelAndView  msort() {
		return new ModelAndView("m/sort");
	}
	
	
	/**
	 * m站-分享
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/m-share")
	public ModelAndView  mshare() {
		return new ModelAndView("m/share");
	}
	
	/**
	 * m站-留言板
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/m-comments")
	public ModelAndView  mcomments() {
		return new ModelAndView("m/comments");
	}
	
}
