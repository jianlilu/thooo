/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.project.progress.entity;

import org.hibernate.validator.constraints.Length;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.shark.base.modules.sys.entity.Office;
import com.shark.base.modules.sys.entity.User;
import com.shark.base.common.persistence.DataEntity;
import com.shark.base.common.utils.excel.annotation.ExcelField;

/**
 * 公司在建项目施工情况表Entity
 * @author wujh
 * @version 2016-10-10
 */
public class ProjectBuildcondition extends DataEntity<ProjectBuildcondition> {
	
	private static final long serialVersionUID = 1L;
	private String orderno;		// 序号
	private String projectname;		// 项目名称
	private Date contracttime;		// 合同时间
	private Date constructiontime;		// 施工时间
	private String contractday;		// 合同工期
	private String matter;		// 物料情况
	private Office department;		// 负责部门
	private User header;		// 负责人
	private String construction;		// 施工情况
	private String acceptancecheck;		// 验收情况
	private String receivedpayments;		// 回款情况
	private String status;		// 项目状态
	private String percentcomplete;		// 完成比例
	private User leader;		// 分管领导
	private String person;		// 涉众人员（内部人员和外包团队）
	private String planday;		// 计划工期
	private Date acceptancetime; //验收时间
	
	public ProjectBuildcondition() {
		super();
	}

	public ProjectBuildcondition(String id){
		super(id);
	}

	@Length(min=0, max=255, message="序号长度必须介于 0 和 255 之间")
	public String getOrderno() {
		return orderno;
	}

	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	
	@Length(min=0, max=200, message="项目名称长度必须介于 0 和 200 之间")
	@ExcelField(title="项目名称", type=1, align=2, sort=1)
	public String getProjectname() {
		return projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@ExcelField(title="合同时间", align=2, sort=20)
	public Date getContracttime() {
		return contracttime;
	}

	public void setContracttime(Date contracttime) {
		this.contracttime = contracttime;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@ExcelField(title="施工时间", align=2, sort=30)
	public Date getConstructiontime() {
		return constructiontime;
	}

	public void setConstructiontime(Date constructiontime) {
		this.constructiontime = constructiontime;
	}
	
	@Length(min=0, max=10, message="计划工期长度必须介于 0 和 10 之间")
	@ExcelField(title="计划工期（天数）", align=2, sort=40)
	public String getPlanday() {
		return planday;
	}

	public void setPlanday(String planday) {
		this.planday = planday;
	}

	@Length(min=0, max=10, message="合同工期长度必须介于 0 和 10 之间")
	@ExcelField(title="合同工期（天数）", align=2, sort=50)
	public String getContractday() {
		return contractday;
	}

	public void setContractday(String contractday) {
		this.contractday = contractday;
	}
	
	@Length(min=0, max=1000, message="物料情况长度必须介于 0 和 1000 之间")
	@ExcelField(title="物料情况", align=2, sort=60)
	public String getMatter() {
		return matter;
	}

	public void setMatter(String matter) {
		this.matter = matter;
	}
	
	public Office getDepartment() {
		return department;
	}

	@ExcelField(title="负责部门", align=2, sort=70)
	public String getDepartmentStr(){
		return department.getName();
	}
	
	public void setDepartment(Office department) {
		this.department = department;
	}
	
	public User getHeader() {
		return header;
	}

	@ExcelField(title="负责人", align=2, sort=80)
	public String getHeaderStr(){
		return header.getName();
	}
	
	public void setHeader(User header) {
		this.header = header;
	}
	
	@Length(min=0, max=1000, message="施工情况长度必须介于 0 和 1000 之间")
	@ExcelField(title="施工情况", align=2, sort=90)
	public String getConstruction() {
		return construction;
	}

	public void setConstruction(String construction) {
		this.construction = construction;
	}
	
	@Length(min=0, max=500, message="验收情况长度必须介于 0 和 500 之间")
	@ExcelField(title="验收情况", align=2, sort=100)
	public String getAcceptancecheck() {
		return acceptancecheck;
	}

	public void setAcceptancecheck(String acceptancecheck) {
		this.acceptancecheck = acceptancecheck;
	}
	
	@ExcelField(title="验收时间", align=2, sort=110)
	public Date getAcceptancetime() {
		return acceptancetime;
	}

	public void setAcceptancetime(Date acceptancetime) {
		this.acceptancetime = acceptancetime;
	}

	@Length(min=0, max=500, message="回款情况长度必须介于 0 和 500 之间")
	@ExcelField(title="回款情况", align=2, sort=120)
	public String getReceivedpayments() {
		return receivedpayments;
	}

	public void setReceivedpayments(String receivedpayments) {
		this.receivedpayments = receivedpayments;
	}
	
	@Length(min=0, max=100, message="项目状态长度必须介于 0 和 100 之间")
	@ExcelField(title="项目状态", align=2, sort=130)
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	@Length(min=0, max=20, message="完成比例长度必须介于 0 和 20 之间")
	@ExcelField(title="完成比例(%)", align=2, sort=140)
	public String getPercentcomplete() {
		return percentcomplete;
	}

	public void setPercentcomplete(String percentcomplete) {
		this.percentcomplete = percentcomplete;
	}
	
	public User getLeader() {
		return leader;
	}

	@ExcelField(title="分管领导", align=2, sort=150)
	public String getLeaderStr(){
		return leader.getName();
	}
	
	public void setLeader(User leader) {
		this.leader = leader;
	}
	
	@Length(min=0, max=200, message="涉众人员（内部人员和外包团队）长度必须介于 0 和 200 之间")
	@ExcelField(title="涉众人员（内部人员和外包团队）", align=2, sort=160)
	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}
	
}