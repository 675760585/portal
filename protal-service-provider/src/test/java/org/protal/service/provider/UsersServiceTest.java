package org.protal.service.provider;

import java.util.List;

import org.protal.dto.business.Users;
import org.protal.service.AbstractTest;
import org.protal.service.api.UserService;
import org.springframework.beans.factory.annotation.Autowired;


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
