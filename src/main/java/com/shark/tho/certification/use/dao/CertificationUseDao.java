/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.certification.use.dao;

import java.util.List;
import java.util.Map;

import com.shark.base.common.persistence.CrudDao;
import com.shark.base.common.persistence.annotation.MyBatisDao;
import com.shark.tho.certification.use.entity.CertificationUse;

/**
 * 证书管理DAO接口
 * @author lu
 * @version 2016-12-17
 */
@MyBatisDao
public interface CertificationUseDao extends CrudDao<CertificationUse> {
	
	public List<Map> findTypeList(CertificationUse certificationUse);
	
	public List<Map> findStaticListByType(CertificationUse certificationUse);
}