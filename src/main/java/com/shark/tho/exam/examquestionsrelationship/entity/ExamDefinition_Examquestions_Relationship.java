/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionsrelationship.entity;

import org.hibernate.validator.constraints.Length;

import com.shark.base.common.persistence.DataEntity;

/**
 * 考试定义-试题关系Entity
 * @author lu
 * @version 2016-12-17
 */
public class ExamDefinition_Examquestions_Relationship extends DataEntity<ExamDefinition_Examquestions_Relationship> {
	
	private static final long serialVersionUID = 1L;
	private String examdefinitionid;		// 考试定义ID
	private String examquestionsdefinitionid;		// 试题定义ID
	
	public ExamDefinition_Examquestions_Relationship() {
		super();
	}

	public ExamDefinition_Examquestions_Relationship(String id){
		super(id);
	}

	@Length(min=0, max=11, message="考试定义ID长度必须介于 0 和 11 之间")
	public String getExamdefinitionid() {
		return examdefinitionid;
	}

	public void setExamdefinitionid(String examdefinitionid) {
		this.examdefinitionid = examdefinitionid;
	}
	
	@Length(min=0, max=11, message="试题定义ID长度必须介于 0 和 11 之间")
	public String getExamquestionsdefinitionid() {
		return examquestionsdefinitionid;
	}

	public void setExamquestionsdefinitionid(String examquestionsdefinitionid) {
		this.examquestionsdefinitionid = examquestionsdefinitionid;
	}
	
}