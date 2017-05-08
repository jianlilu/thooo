/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.stamp.use.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.shark.base.modules.sys.entity.Office;
import com.shark.base.modules.sys.entity.User;

import com.shark.base.common.persistence.DataEntity;

/**
 * 印章使用Entity
 * @author lu
 * @version 2016-12-17
 */
public class StampUse extends DataEntity<StampUse> {
	
	private static final long serialVersionUID = 1L;
	private String stamptype;		// 印章类别
	private Date usingtime;		// 使用时间
	private Office usingdepartment;		// 使用部门
	private String contentabstracts;		// 内容摘要
	private String usagecounter;		// 使用次数
	private User stampadmin;		// 印章管理员
	
	public StampUse() {
		super();
	}

	public StampUse(String id){
		super(id);
	}

	@Length(min=0, max=20, message="印章类别长度必须介于 0 和 20 之间")
	public String getStamptype() {
		return stamptype;
	}

	public void setStamptype(String stamptype) {
		this.stamptype = stamptype;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd")
	public Date getUsingtime() {
		return usingtime;
	}

	public void setUsingtime(Date usingtime) {
		this.usingtime = usingtime;
	}
	
	public Office getUsingdepartment() {
		return usingdepartment;
	}

	public void setUsingdepartment(Office usingdepartment) {
		this.usingdepartment = usingdepartment;
	}
	
	@Length(min=0, max=255, message="内容摘要长度必须介于 0 和 255 之间")
	public String getContentabstracts() {
		return contentabstracts;
	}

	public void setContentabstracts(String contentabstracts) {
		this.contentabstracts = contentabstracts;
	}
	
	@Length(min=0, max=11, message="使用次数长度必须介于 0 和 11 之间")
	public String getUsagecounter() {
		return usagecounter;
	}

	public void setUsagecounter(String usagecounter) {
		this.usagecounter = usagecounter;
	}
	
	public User getStampadmin() {
		return stampadmin;
	}

	public void setStampadmin(User stampadmin) {
		this.stampadmin = stampadmin;
	}
	
}