package org.portal.dao;

import java.util.List;

import org.portal.dto.business.Users;

public interface TusersMapper {
	
	// public Users queryUserByNameAndPwd(@Param("name")String
	// name,@Param("pwd")String pwd);

	public List<Users> queryAllUser();

	int deleteByPrimaryKey(Integer loginid);

	int insert(Users record);

	int insertSelective(Users record);

	Users selectByPrimaryKey(Integer loginid);

	int updateByPrimaryKeySelective(Users record);

	int updateByPrimaryKey(Users record);
}
