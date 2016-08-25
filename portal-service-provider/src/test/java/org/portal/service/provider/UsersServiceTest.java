package org.portal.service.provider;

import java.util.List;

import org.portal.dto.business.Users;
import org.portal.service.AbstractTest;
import org.portal.service.api.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.ContextLoaderListener;


public class UsersServiceTest extends AbstractTest{
		
	@Autowired
	private UserService service;

	public void setUp() throws Exception {
		super.setUp();
		service = (UserService) super.context
				.getBean("userService");
	}

	public void testShow()
	{
		List<Users> list=service.queryAllUser();
		for(Users user:list){
			System.out.println("用户名称:"+user.getLoginname());
		}
	}
}
