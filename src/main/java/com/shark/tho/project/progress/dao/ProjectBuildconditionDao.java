/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.project.progress.dao;

import com.shark.base.common.persistence.CrudDao;
import com.shark.base.common.persistence.annotation.MyBatisDao;
import com.shark.tho.project.progress.entity.ProjectBuildcondition;

/**
 * 公司在建项目施工情况表DAO接口
 * @author wujh
 * @version 2016-10-10
 */
@MyBatisDao
public interface ProjectBuildconditionDao extends CrudDao<ProjectBuildcondition> {
	
}