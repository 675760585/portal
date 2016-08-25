package org.portal.service.provider;

import java.util.List;

import org.portal.dao.TusersMapper;
import org.portal.dto.business.Users;
import org.portal.service.api.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private TusersMapper tuserMapper;

	public List<Users> queryAllUser() {
		return tuserMapper.queryAllUser();
	}
	
	
	
	
}

