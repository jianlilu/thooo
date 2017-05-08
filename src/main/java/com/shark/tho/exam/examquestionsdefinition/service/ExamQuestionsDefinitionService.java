/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionsdefinition.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shark.base.common.persistence.Page;
import com.shark.base.common.service.CrudService;
import com.shark.tho.exam.examquestionsdefinition.entity.ExamQuestionsDefinition;
import com.shark.tho.exam.examquestionsdefinition.dao.ExamQuestionsDefinitionDao;

/**
 * 试题定义Service
 * @author lu
 * @version 2016-12-19
 */
@Service
@Transactional(readOnly = true)
public class ExamQuestionsDefinitionService extends CrudService<ExamQuestionsDefinitionDao, ExamQuestionsDefinition> {

	public ExamQuestionsDefinition get(String id) {
		return super.get(id);
	}
	
	public List<ExamQuestionsDefinition> findList(ExamQuestionsDefinition examQuestionsDefinition) {
		return super.findList(examQuestionsDefinition);
	}
	
	public Page<ExamQuestionsDefinition> findPage(Page<ExamQuestionsDefinition> page, ExamQuestionsDefinition examQuestionsDefinition) {
		return super.findPage(page, examQuestionsDefinition);
	}
	
	@Transactional(readOnly = false)
	public void save(ExamQuestionsDefinition examQuestionsDefinition) {
		super.save(examQuestionsDefinition);
	}
	
	@Transactional(readOnly = false)
	public void delete(ExamQuestionsDefinition examQuestionsDefinition) {
		super.delete(examQuestionsDefinition);
	}
	
}