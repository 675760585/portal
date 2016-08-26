package org.portal.service.provider;

import org.portal.dao.TmovieMapper;
import org.portal.service.api.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("movieService")
public class MovieServiceImpl implements MovieService{
	
	@Autowired
	private TmovieMapper tuserMapper;
	
	
//	public TmovieWithBLOBs selectByPrimaryKey(Integer id){
//		
//	}
	
	
	
}

