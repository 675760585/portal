package org.portal.service.provider;

import java.util.ArrayList;
import java.util.List;

import org.portal.dao.TmovieMapper;
import org.portal.dto.business.TmovieWithBLOBs;
import org.portal.service.api.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("movieService")
public class MovieServiceImpl implements MovieService{
	
	@Autowired
	private TmovieMapper tuserMapper;

	@Override
	public List<TmovieWithBLOBs> selectAllMovie() {
		List<TmovieWithBLOBs> list=tuserMapper.selectAllMovie();
		return list==null?new ArrayList<TmovieWithBLOBs>():list;
	}
	
	
//	public TmovieWithBLOBs selectByPrimaryKey(Integer id){
//		
//	}
	
	
	
}

