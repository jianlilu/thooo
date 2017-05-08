/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examinationsurveycase.entity;

import org.hibernate.validator.constraints.Length;

import com.shark.base.common.persistence.DataEntity;

/**
 * 考试-调查实例Entity
 * @author lu
 * @version 2016-12-17
 */
public class ExaminationSurveyCase extends DataEntity<ExaminationSurveyCase> {
	
	private static final long serialVersionUID = 1L;
	private String candidates;		// 考生
	private String testpaperdefinitionid;		// 试卷定义ID
	private String score;		// 成绩
	private String investigationtarget;		// 调查对象
	private String candidatestelephone;		// 考生电话
	private String candidateidcardnumber;		// 考生身份证号
	
	public ExaminationSurveyCase() {
		super();
	}

	public ExaminationSurveyCase(String id){
		super(id);
	}

	@Length(min=0, max=255, message="考生长度必须介于 0 和 255 之间")
	public String getCandidates() {
		return candidates;
	}

	public void setCandidates(String candidates) {
		this.candidates = candidates;
	}
	
	@Length(min=0, max=11, message="试卷定义ID长度必须介于 0 和 11 之间")
	public String getTestpaperdefinitionid() {
		return testpaperdefinitionid;
	}

	public void setTestpaperdefinitionid(String testpaperdefinitionid) {
		this.testpaperdefinitionid = testpaperdefinitionid;
	}
	
	@Length(min=0, max=11, message="成绩长度必须介于 0 和 11 之间")
	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}
	
	@Length(min=0, max=255, message="调查对象长度必须介于 0 和 255 之间")
	public String getInvestigationtarget() {
		return investigationtarget;
	}

	public void setInvestigationtarget(String investigationtarget) {
		this.investigationtarget = investigationtarget;
	}
	
	@Length(min=0, max=11, message="考生电话长度必须介于 0 和 11 之间")
	public String getCandidatestelephone() {
		return candidatestelephone;
	}

	public void setCandidatestelephone(String candidatestelephone) {
		this.candidatestelephone = candidatestelephone;
	}
	
	@Length(min=0, max=255, message="考生身份证号长度必须介于 0 和 255 之间")
	public String getCandidateidcardnumber() {
		return candidateidcardnumber;
	}

	public void setCandidateidcardnumber(String candidateidcardnumber) {
		this.candidateidcardnumber = candidateidcardnumber;
	}
	
}