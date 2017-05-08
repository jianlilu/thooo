/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionsdefinition.dao;

import com.shark.base.common.persistence.CrudDao;
import com.shark.base.common.persistence.annotation.MyBatisDao;
import com.shark.tho.exam.examquestionsdefinition.entity.ExamQuestionsDefinition;

/**
 * 试题定义DAO接口
 * @author lu
 * @version 2016-12-19
 */
@MyBatisDao
public interface ExamQuestionsDefinitionDao extends CrudDao<ExamQuestionsDefinition> {
	
}