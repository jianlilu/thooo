/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.shark.base.modules.sys.dao;

import java.util.List;

import com.shark.base.common.persistence.TreeDao;
import com.shark.base.common.persistence.annotation.MyBatisDao;
import com.shark.base.modules.sys.entity.Area;

/**
 * 区域DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	/**
	 * 获取下属区域
	 * @param loginName
	 * @return
	 */
	public List<Area> findByParentIdsLike(Area area);
}
