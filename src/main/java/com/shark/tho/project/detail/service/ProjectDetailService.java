/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.project.detail.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shark.base.common.persistence.Page;
import com.shark.base.common.service.CrudService;
import com.shark.tho.project.detail.entity.ProjectDetail;
import com.shark.tho.project.detail.dao.ProjectDetailDao;

/**
 * 项目进展明细Service
 * @author wujh
 * @version 2016-10-11
 */
@Service
@Transactional(readOnly = true)
public class ProjectDetailService extends CrudService<ProjectDetailDao, ProjectDetail> {

	public ProjectDetail get(String id) {
		return super.get(id);
	}
	
	public List<ProjectDetail> findList(ProjectDetail projectDetail) {
		return super.findList(projectDetail);
	}
	
	public Page<ProjectDetail> findPage(Page<ProjectDetail> page, ProjectDetail projectDetail) {
		return super.findPage(page, projectDetail);
	}
	
	@Transactional(readOnly = false)
	public void save(ProjectDetail projectDetail) {
		super.save(projectDetail);
	}
	
	@Transactional(readOnly = false)
	public void delete(ProjectDetail projectDetail) {
		super.delete(projectDetail);
	}
	
}