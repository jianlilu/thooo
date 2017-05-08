/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examinationsurveydefinition.entity;

import org.hibernate.validator.constraints.Length;

import com.shark.base.common.persistence.DataEntity;

/**
 * 考试-调查定义Entity
 * @author lu
 * @version 2016-12-17
 */
public class ExaminationSurveyDefinition extends DataEntity<ExaminationSurveyDefinition> {
	
	private static final long serialVersionUID = 1L;
	private String examname;		// 考试名称
	private String examtype;		// 考试类型
	private String examduration;		// 考试时长
	
	public ExaminationSurveyDefinition() {
		super();
	}

	public ExaminationSurveyDefinition(String id){
		super(id);
	}

	@Length(min=0, max=255, message="考试名称长度必须介于 0 和 255 之间")
	public String getExamname() {
		return examname;
	}

	public void setExamname(String examname) {
		this.examname = examname;
	}
	
	@Length(min=0, max=255, message="考试类型长度必须介于 0 和 255 之间")
	public String getExamtype() {
		return examtype;
	}

	public void setExamtype(String examtype) {
		this.examtype = examtype;
	}
	
	@Length(min=0, max=11, message="考试时长长度必须介于 0 和 11 之间")
	public String getExamduration() {
		return examduration;
	}

	public void setExamduration(String examduration) {
		this.examduration = examduration;
	}
	
}