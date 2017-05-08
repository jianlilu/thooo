/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionsrelationship.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shark.base.common.persistence.Page;
import com.shark.base.common.service.CrudService;
import com.shark.tho.exam.examquestionsrelationship.entity.ExamDefinition_Examquestions_Relationship;
import com.shark.tho.exam.examquestionsrelationship.dao.ExamDefinition_Examquestions_RelationshipDao;

/**
 * 考试定义-试题关系Service
 * @author lu
 * @version 2016-12-17
 */
@Service
@Transactional(readOnly = true)
public class ExamDefinition_Examquestions_RelationshipService extends CrudService<ExamDefinition_Examquestions_RelationshipDao, ExamDefinition_Examquestions_Relationship> {

	public ExamDefinition_Examquestions_Relationship get(String id) {
		return super.get(id);
	}
	
	public List<ExamDefinition_Examquestions_Relationship> findList(ExamDefinition_Examquestions_Relationship examDefinition_Examquestions_Relationship) {
		return super.findList(examDefinition_Examquestions_Relationship);
	}
	
	public Page<ExamDefinition_Examquestions_Relationship> findPage(Page<ExamDefinition_Examquestions_Relationship> page, ExamDefinition_Examquestions_Relationship examDefinition_Examquestions_Relationship) {
		return super.findPage(page, examDefinition_Examquestions_Relationship);
	}
	
	@Transactional(readOnly = false)
	public void save(ExamDefinition_Examquestions_Relationship examDefinition_Examquestions_Relationship) {
		super.save(examDefinition_Examquestions_Relationship);
	}
	
	@Transactional(readOnly = false)
	public void delete(ExamDefinition_Examquestions_Relationship examDefinition_Examquestions_Relationship) {
		super.delete(examDefinition_Examquestions_Relationship);
	}
	
}