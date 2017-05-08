/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examinationsurveycase.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shark.base.common.persistence.Page;
import com.shark.base.common.service.CrudService;
import com.shark.tho.exam.examinationsurveycase.entity.ExaminationSurveyCase;
import com.shark.tho.exam.examinationsurveycase.dao.ExaminationSurveyCaseDao;

/**
 * 考试-调查实例Service
 * @author lu
 * @version 2016-12-17
 */
@Service
@Transactional(readOnly = true)
public class ExaminationSurveyCaseService extends CrudService<ExaminationSurveyCaseDao, ExaminationSurveyCase> {

	public ExaminationSurveyCase get(String id) {
		return super.get(id);
	}
	
	public List<ExaminationSurveyCase> findList(ExaminationSurveyCase examinationSurveyCase) {
		return super.findList(examinationSurveyCase);
	}
	
	public Page<ExaminationSurveyCase> findPage(Page<ExaminationSurveyCase> page, ExaminationSurveyCase examinationSurveyCase) {
		return super.findPage(page, examinationSurveyCase);
	}
	
	@Transactional(readOnly = false)
	public void save(ExaminationSurveyCase examinationSurveyCase) {
		super.save(examinationSurveyCase);
	}
	
	@Transactional(readOnly = false)
	public void delete(ExaminationSurveyCase examinationSurveyCase) {
		super.delete(examinationSurveyCase);
	}
	
}