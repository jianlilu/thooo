/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionscase.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shark.base.common.persistence.Page;
import com.shark.base.common.service.CrudService;
import com.shark.tho.exam.examquestionscase.entity.ExamQuestionsCase;
import com.shark.tho.exam.examquestionscase.dao.ExamQuestionsCaseDao;

/**
 * 试题实例Service
 * @author lu
 * @version 2016-12-17
 */
@Service
@Transactional(readOnly = true)
public class ExamQuestionsCaseService extends CrudService<ExamQuestionsCaseDao, ExamQuestionsCase> {

	public ExamQuestionsCase get(String id) {
		return super.get(id);
	}
	
	public List<ExamQuestionsCase> findList(ExamQuestionsCase examQuestionsCase) {
		return super.findList(examQuestionsCase);
	}
	
	public Page<ExamQuestionsCase> findPage(Page<ExamQuestionsCase> page, ExamQuestionsCase examQuestionsCase) {
		return super.findPage(page, examQuestionsCase);
	}
	
	@Transactional(readOnly = false)
	public void save(ExamQuestionsCase examQuestionsCase) {
		super.save(examQuestionsCase);
	}
	
	@Transactional(readOnly = false)
	public void delete(ExamQuestionsCase examQuestionsCase) {
		super.delete(examQuestionsCase);
	}
	
}