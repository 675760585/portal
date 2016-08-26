package org.portal.dao;

import org.portal.dto.business.Tmovie;
import org.portal.dto.business.TmovieWithBLOBs;

public interface TmovieMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TmovieWithBLOBs record);

    int insertSelective(TmovieWithBLOBs record);

    TmovieWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TmovieWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(TmovieWithBLOBs record);

    int updateByPrimaryKey(Tmovie record);
}