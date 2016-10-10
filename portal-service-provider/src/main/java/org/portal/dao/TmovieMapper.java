package org.portal.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.portal.dto.business.Tmovie;
import org.portal.dto.business.TmovieWithBLOBs;
import org.portal.utils.Page;

public interface TmovieMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TmovieWithBLOBs record);

    int insertSelective(TmovieWithBLOBs record);

    TmovieWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TmovieWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(TmovieWithBLOBs record);

    int updateByPrimaryKey(Tmovie record);
    
    List<TmovieWithBLOBs> selectAllMovie();
    
    List<TmovieWithBLOBs> selectPageMovie(Page page);
    
}