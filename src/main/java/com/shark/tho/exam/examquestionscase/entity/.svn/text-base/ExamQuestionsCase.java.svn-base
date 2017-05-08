/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionscase.entity;

import org.hibernate.validator.constraints.Length;

import com.shark.base.common.persistence.DataEntity;

/**
 * 试题实例Entity
 * @author lu
 * @version 2016-12-17
 */
public class ExamQuestionsCase extends DataEntity<ExamQuestionsCase> {
	
	private static final long serialVersionUID = 1L;
	private String examquestionsdefinitionid;		// 试题定义ID
	private String submitanswers;		// 提交答案
	private String examinationcaseid;		// 考试实例ID
	
	public ExamQuestionsCase() {
		super();
	}

	public ExamQuestionsCase(String id){
		super(id);
	}

	@Length(min=0, max=11, message="试题定义ID长度必须介于 0 和 11 之间")
	public String getExamquestionsdefinitionid() {
		return examquestionsdefinitionid;
	}

	public void setExamquestionsdefinitionid(String examquestionsdefinitionid) {
		this.examquestionsdefinitionid = examquestionsdefinitionid;
	}
	
	@Length(min=0, max=255, message="提交答案长度必须介于 0 和 255 之间")
	public String getSubmitanswers() {
		return submitanswers;
	}

	public void setSubmitanswers(String submitanswers) {
		this.submitanswers = submitanswers;
	}
	
	@Length(min=0, max=11, message="考试实例ID长度必须介于 0 和 11 之间")
	public String getExaminationcaseid() {
		return examinationcaseid;
	}

	public void setExaminationcaseid(String examinationcaseid) {
		this.examinationcaseid = examinationcaseid;
	}
	
}