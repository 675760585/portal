package org.portal.service.provider;

import java.util.ArrayList;
import java.util.List;

import org.portal.dao.TmovieMapper;
import org.portal.dto.business.TmovieWithBLOBs;
import org.portal.service.api.MovieService;
import org.portal.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("movieService")
public class MovieServiceImpl implements MovieService{
	
	@Autowired
	private TmovieMapper tmovieMapper;
	

	@Override
	public List<TmovieWithBLOBs> selectAllMovie() {
		List<TmovieWithBLOBs> list=tmovieMapper.selectAllMovie();
		return list==null?new ArrayList<TmovieWithBLOBs>():list;
	}

	@Override
	public Page<TmovieWithBLOBs> selectPageMovie(Page page) {
		List list=tmovieMapper.selectPageMovie(page);
		page.setResults(list);
		return page;
	}

	@Override
	public TmovieWithBLOBs selectByPrimaryKey(Integer id) {
		return tmovieMapper.selectByPrimaryKey(id);
	}

	
//	public TmovieWithBLOBs selectByPrimaryKey(Integer id){
//		
//	}
	
	
	
}

