package com.awh.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.portal.dto.business.TmovieWithBLOBs;
import org.portal.service.api.MovieService;
import org.portal.service.api.UserService;
import org.portal.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.awh.enums.MovieTypeEnums;

@Controller
public class IndexController extends BaseController {
	
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MovieService movieService;
	
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
	 * 登入
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
		Page<TmovieWithBLOBs> page=movieService.selectPageMovie(new Page(5));
		return new ModelAndView("m/news").addObject("movieItem", page.getResults());
	}
	
	/**
	 * m站-分类
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/m-sort")
	public ModelAndView  msort(@RequestParam String type) throws UnsupportedEncodingException {
		ModelAndView view=new ModelAndView("m/sort");
		Page pages=new Page();
		Map<String,Object> param=new HashMap<String,Object>();
		if(!StringUtils.isEmpty(type)){
			param.put("type",MovieTypeEnums.getByValue(type).getView());
			view.addObject("type",MovieTypeEnums.getByValue(type).getView());
			view.addObject("code", type);
		}
		pages.setParams(param);
		Page<TmovieWithBLOBs> page=movieService.selectPageMovie(pages);
		view.addObject("typeItem", page.getResults());
		return view;
	}
	
	
	/**
	 * m站-分类json 数据
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@ResponseBody
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/m-sort-json")
	public void  msort_json(@RequestParam String type,@RequestParam int pageNo) throws UnsupportedEncodingException {
		Map<String,Object> map = new HashMap<String,Object>();
		Page pages=new Page();
		pages.setPageNo(pageNo);  //设置页码
		
		Map<String,Object> param=new HashMap<String,Object>();
		param.put("type",MovieTypeEnums.getByValue(type).getView());
		pages.setParams(param);
		Page<TmovieWithBLOBs> page=movieService.selectPageMovie(pages);
		
		map.put("code", type);
		map.put("pageNo", pageNo);
		map.put("typeItem", page.getResults());
		if(page.getResults()==null &&page.getResults().size()==0){
			map.put("success","false");
		}else{
			map.put("success","true");
		}
		writeJson(map);
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
	
	/**
	 * m站-电影详情
	 * @return
	 */
	@RequestMapping(method={RequestMethod.POST,RequestMethod.GET}, value="/m-movie-details")
	public ModelAndView  movie_details(@RequestParam int id) {
		
		
		return new ModelAndView("m/blog-single-post");
	}
	
}
