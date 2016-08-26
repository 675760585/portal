package org.portal.service.api;

import java.util.List;

import org.portal.dto.business.Users;

/**   
 * @Title UserService.java 
 * @Package com.usuch.service.service
 * @Description 登陆相关服务
 * @author 
 * @date 2015-2-15 下午11:02:15 
 * @version 
 */
public interface UserService {
	
	//public Users queryUserByNameAndPwd(String loginName,String loginPwd);
	
	public List<Users> queryAllUser();
	
}

