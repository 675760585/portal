package org.portal.service.provider;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.portal.dto.business.Tmovie;
import org.portal.dto.business.TmovieWithBLOBs;
import org.portal.dto.business.Users;
import org.portal.service.AbstractTest;
import org.portal.service.api.MovieService;
import org.portal.service.api.UserService;
import org.portal.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;


public class UsersServiceTest extends AbstractTest{
		
	@Autowired
	private UserService service;
	
	@Autowired
	private MovieService movieService;

	public void setUp() throws Exception {
		super.setUp();
		service = (UserService) super.context
				.getBean("userService");
		movieService= (MovieService) super.context
				.getBean("movieService");
	}
	public void test(){
		List<String> str=new ArrayList<String>();
		List<TmovieWithBLOBs> list=movieService.selectAllMovie();
		for(Tmovie t:list){
			if(t.getType()!=null){
				String[] ary = t.getType().split("\\/");
				for(int i=0;i<ary.length;i++){
					String z=ary[i].trim();
					if(!str.contains(z)){
						str.add(ary[i].trim());
						
					}
				}
			}
		}
		for(String s :str){
			System.out.println(s);
		}
		
	}
	
	
	public void test1(){
		Map<String, Object> map=new HashMap<String, Object>();
		List<String> str=new ArrayList<String>();
		Page page=new Page(Integer.MAX_VALUE-1);
		map.put("type", "动作");
		page.setParams(map);
		Page<TmovieWithBLOBs> list=movieService.selectPageMovie(page);
		System.out.println(list.getResults().size());
		
	}
	


	public void testShow()
	{
		List<Users> list=service.queryAllUser();
		for(Users user:list){
			System.out.println("用户名称:"+user.getLoginname());
		}
	}
	
//	动作
//	科幻
//	冒险
//	喜剧
//	爱情
//	剧情
//	动作
//	犯罪
//	西部
//	灾难
//	神秘
//	惊悚
//	悬疑
//	恐怖
//	传记
//	历史
//	动画
//	恐怖
//	武侠
//	古装
//	同性
}
