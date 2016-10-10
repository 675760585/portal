package org.portal.service.api;

import java.util.List;

import org.portal.dto.business.TmovieWithBLOBs;

/**   
 * @Title MovieService.java 
 * @Description 电影相关服务
 * @author 
 * @date 2016-8-26
 * @version 
 */
public interface MovieService {
	public List<TmovieWithBLOBs> selectAllMovie();
}
