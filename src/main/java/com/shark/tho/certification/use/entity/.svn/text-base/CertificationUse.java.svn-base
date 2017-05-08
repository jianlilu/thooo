/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.certification.use.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.shark.base.modules.sys.entity.Office;
import com.shark.base.modules.sys.entity.User;

import com.shark.base.common.persistence.DataEntity;

/**
 * 证书管理Entity
 * @author lu
 * @version 2016-12-17
 */
public class CertificationUse extends DataEntity<CertificationUse> {
	
	private static final long serialVersionUID = 1L;
	private String certificationtype;		// 证书类型
	private Date borrowingtime;		// 借用日期
	private Office usingdepartment;		// 借用部门
	private String usages;		// 用途
	private Date returntime;		// 归还日期
	private User officeadmin;		// 办公室管理员
	
	public CertificationUse() {
		super();
	}

	public CertificationUse(String id){
		super(id);
	}

	@Length(min=0, max=20, message="证书类型长度必须介于 0 和 20 之间")
	public String getCertificationtype() {
		return certificationtype;
	}

	public void setCertificationtype(String certificationtype) {
		this.certificationtype = certificationtype;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd")
	public Date getBorrowingtime() {
		return borrowingtime;
	}

	public void setBorrowingtime(Date borrowingtime) {
		this.borrowingtime = borrowingtime;
	}
	
	public Office getUsingdepartment() {
		return usingdepartment;
	}

	public void setUsingdepartment(Office usingdepartment) {
		this.usingdepartment = usingdepartment;
	}
	
	@Length(min=0, max=255, message="用途长度必须介于 0 和 255 之间")
	public String getUsages() {
		return usages;
	}

	public void setUsages(String usages) {
		this.usages = usages;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd")
	public Date getReturntime() {
		return returntime;
	}

	public void setReturntime(Date returntime) {
		this.returntime = returntime;
	}
	
	public User getOfficeadmin() {
		return officeadmin;
	}

	public void setOfficeadmin(User officeadmin) {
		this.officeadmin = officeadmin;
	}
	
}