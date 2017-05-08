/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.stamp.use.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shark.base.common.persistence.Page;
import com.shark.base.common.service.CrudService;
import com.shark.tho.certification.use.entity.CertificationUse;
import com.shark.tho.stamp.use.entity.StampUse;
import com.shark.tho.stamp.use.dao.StampUseDao;

/**
 * 印章使用Service
 * @author lu
 * @version 2016-12-17
 */
@Service
@Transactional(readOnly = true)
public class StampUseService extends CrudService<StampUseDao, StampUse> {

	public StampUse get(String id) {
		return super.get(id);
	}
	
	public List<StampUse> findList(StampUse stampUse) {
		return super.findList(stampUse);
	}
	
	public List<Map> findTypeList(StampUse stampUse) {
		return this.dao.findTypeList(stampUse);
	}
	
	public List<Map> findStaticListByType(StampUse stampUse) {
		return this.dao.findStaticListByType(stampUse);
	}
	
	public Page<StampUse> findPage(Page<StampUse> page, StampUse stampUse) {
		dataScopeFilter(stampUse,"dsf", "id = a.usingdepartment", "id = a.create_by");
		return super.findPage(page, stampUse);
	}
	
	@Transactional(readOnly = false)
	public void save(StampUse stampUse) {
		super.save(stampUse);
	}
	
	@Transactional(readOnly = false)
	public void delete(StampUse stampUse) {
		super.delete(stampUse);
	}
	
}