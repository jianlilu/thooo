/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.project.detail.entity;

import org.hibernate.validator.constraints.Length;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.shark.base.modules.sys.entity.User;
import com.shark.base.common.persistence.DataEntity;
import com.shark.base.common.utils.excel.annotation.ExcelField;

/**
 * 项目进展明细Entity
 * @author wujh
 * @version 2016-10-11
 */
public class ProjectDetail extends DataEntity<ProjectDetail> {
	
	private static final long serialVersionUID = 1L;
	private String projectid;		// 项目Id
	private String projectname;		// 项目名称
	private Date createtime;		// 填写日期
	private String content;		// 进展情况
	private User createuser;		// 填写人
	
	public ProjectDetail() {
		super();
	}

	public ProjectDetail(String id){
		super(id);
	}

	@Length(min=0, max=255, message="项目Id长度必须介于 0 和 255 之间")
	public String getProjectid() {
		return projectid;
	}

	public void setProjectid(String projectid) {
		this.projectid = projectid;
	}
	
	@Length(min=0, max=255, message="项目名称长度必须介于 0 和 255 之间")
	@ExcelField(title="项目名称", align=2, sort=10)
	public String getProjectname() {
		return projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@ExcelField(title="填写日期", align=2, sort=20)
	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	
	@Length(min=0, max=1000, message="进展情况长度必须介于 0 和 1000 之间")
	@ExcelField(title="进展情况", align=2, sort=30)
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public User getCreateuser() {
		return createuser;
	}
	
	@ExcelField(title="填报人", align=2, sort=70)
	public String getCreateuserStr(){
		return createuser.getName();
	}

	public void setCreateuser(User createuser) {
		this.createuser = createuser;
	}
	
}