package org.protal.service.provider;

import java.util.List;

import org.protal.dao.TusersMapper;
import org.protal.dto.business.Users;
import org.protal.service.api.UserService;
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

