/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.mx.project.persondetail.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shark.base.common.persistence.Page;
import com.shark.base.common.service.CrudService;
import com.shark.mx.project.persondetail.entity.Persondetail;
import com.shark.mx.project.persondetail.dao.PersondetailDao;

/**
 * 就业专项资金补贴人员的明细Service
 * @author wujh
 * @version 2015-11-24
 */
@Service
@Transactional(readOnly = true)
public class PersondetailService extends CrudService<PersondetailDao, Persondetail> {

	public Persondetail get(String id) {
		return super.get(id);
	}
	
	public List<Persondetail> findList(Persondetail persondetail) {
		return super.findList(persondetail);
	}
	
	public Page<Persondetail> findPage(Page<Persondetail> page, Persondetail persondetail) {
		return super.findPage(page, persondetail);
	}
	
	@Transactional(readOnly = false)
	public void save(Persondetail persondetail) {
		super.save(persondetail);
	}
	
	@Transactional(readOnly = false)
	public void delete(Persondetail persondetail) {
		super.delete(persondetail);
	}
	
}