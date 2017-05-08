/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionsdefinition.entity;

import org.hibernate.validator.constraints.Length;

import com.shark.base.common.persistence.DataEntity;

/**
 * 试题定义Entity
 * @author lu
 * @version 2016-12-19
 */
public class ExamQuestionsDefinition extends DataEntity<ExamQuestionsDefinition> {
	
	private static final long serialVersionUID = 1L;
	private String ordernumber;		// 序号
	private String examquestionsissue;		// 试题问题
	private String examquestionsanswer;		// 试题答案
	private String examquestionstype;		// 试题类型
	private String examquestionsfigures;		// 试题分值
	private String examquestionsoption;		// 试题选项
	
	public ExamQuestionsDefinition() {
		super();
	}

	public ExamQuestionsDefinition(String id){
		super(id);
	}

	@Length(min=0, max=11, message="序号长度必须介于 0 和 11 之间")
	public String getOrdernumber() {
		return ordernumber;
	}

	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}
	
	@Length(min=0, max=255, message="试题问题长度必须介于 0 和 255 之间")
	public String getExamquestionsissue() {
		return examquestionsissue;
	}

	public void setExamquestionsissue(String examquestionsissue) {
		this.examquestionsissue = examquestionsissue;
	}
	
	@Length(min=0, max=255, message="试题答案长度必须介于 0 和 255 之间")
	public String getExamquestionsanswer() {
		return examquestionsanswer;
	}

	public void setExamquestionsanswer(String examquestionsanswer) {
		this.examquestionsanswer = examquestionsanswer;
	}
	
	@Length(min=0, max=255, message="试题类型长度必须介于 0 和 255 之间")
	public String getExamquestionstype() {
		return examquestionstype;
	}

	public void setExamquestionstype(String examquestionstype) {
		this.examquestionstype = examquestionstype;
	}
	
	@Length(min=0, max=11, message="试题分值长度必须介于 0 和 11 之间")
	public String getExamquestionsfigures() {
		return examquestionsfigures;
	}

	public void setExamquestionsfigures(String examquestionsfigures) {
		this.examquestionsfigures = examquestionsfigures;
	}
	
	@Length(min=0, max=255, message="试题选项长度必须介于 0 和 255 之间")
	public String getExamquestionsoption() {
		return examquestionsoption;
	}

	public void setExamquestionsoption(String examquestionsoption) {
		this.examquestionsoption = examquestionsoption;
	}
	
}