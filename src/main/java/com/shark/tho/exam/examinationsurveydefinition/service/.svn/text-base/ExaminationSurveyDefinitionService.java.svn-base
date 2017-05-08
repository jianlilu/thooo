/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examinationsurveydefinition.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shark.base.common.persistence.Page;
import com.shark.base.common.service.CrudService;
import com.shark.tho.exam.examinationsurveydefinition.entity.ExaminationSurveyDefinition;
import com.shark.tho.exam.examinationsurveydefinition.dao.ExaminationSurveyDefinitionDao;

/**
 * 考试-调查定义Service
 * @author lu
 * @version 2016-12-17
 */
@Service
@Transactional(readOnly = true)
public class ExaminationSurveyDefinitionService extends CrudService<ExaminationSurveyDefinitionDao, ExaminationSurveyDefinition> {

	public ExaminationSurveyDefinition get(String id) {
		return super.get(id);
	}
	
	public List<ExaminationSurveyDefinition> findList(ExaminationSurveyDefinition examinationSurveyDefinition) {
		return super.findList(examinationSurveyDefinition);
	}
	
	public Page<ExaminationSurveyDefinition> findPage(Page<ExaminationSurveyDefinition> page, ExaminationSurveyDefinition examinationSurveyDefinition) {
		return super.findPage(page, examinationSurveyDefinition);
	}
	
	@Transactional(readOnly = false)
	public void save(ExaminationSurveyDefinition examinationSurveyDefinition) {
		super.save(examinationSurveyDefinition);
	}
	
	@Transactional(readOnly = false)
	public void delete(ExaminationSurveyDefinition examinationSurveyDefinition) {
		super.delete(examinationSurveyDefinition);
	}
	
}