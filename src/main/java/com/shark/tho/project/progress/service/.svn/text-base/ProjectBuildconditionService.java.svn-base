/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.project.progress.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shark.base.common.persistence.Page;
import com.shark.base.common.service.CrudService;
import com.shark.tho.project.progress.entity.ProjectBuildcondition;
import com.shark.tho.project.progress.dao.ProjectBuildconditionDao;

/**
 * 公司在建项目施工情况表Service
 * @author wujh
 * @version 2016-10-10
 */
@Service
@Transactional(readOnly = true)
public class ProjectBuildconditionService extends CrudService<ProjectBuildconditionDao, ProjectBuildcondition> {

	public ProjectBuildcondition get(String id) {
		return super.get(id);
	}
	
	public List<ProjectBuildcondition> findList(ProjectBuildcondition projectBuildcondition) {
		return super.findList(projectBuildcondition);
	}
	
	public Page<ProjectBuildcondition> findPage(Page<ProjectBuildcondition> page, ProjectBuildcondition projectBuildcondition) {
		return super.findPage(page, projectBuildcondition);
	}
	
	@Transactional(readOnly = false)
	public void save(ProjectBuildcondition projectBuildcondition) {
		super.save(projectBuildcondition);
	}
	
	@Transactional(readOnly = false)
	public void delete(ProjectBuildcondition projectBuildcondition) {
		super.delete(projectBuildcondition);
	}
	
}