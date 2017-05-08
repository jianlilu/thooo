/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.stamp.use.dao;

import java.util.List;
import java.util.Map;

import com.shark.base.common.persistence.CrudDao;
import com.shark.base.common.persistence.annotation.MyBatisDao;
import com.shark.tho.certification.use.entity.CertificationUse;
import com.shark.tho.stamp.use.entity.StampUse;

/**
 * 印章使用DAO接口
 * @author lu
 * @version 2016-12-17
 */
@MyBatisDao
public interface StampUseDao extends CrudDao<StampUse> {
	
	public List<Map> findTypeList(StampUse stampUse);
	
	public List<Map> findStaticListByType(StampUse stampUse);
	
}