/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionscase.dao;

import com.shark.base.common.persistence.CrudDao;
import com.shark.base.common.persistence.annotation.MyBatisDao;
import com.shark.tho.exam.examquestionscase.entity.ExamQuestionsCase;

/**
 * 试题实例DAO接口
 * @author lu
 * @version 2016-12-17
 */
@MyBatisDao
public interface ExamQuestionsCaseDao extends CrudDao<ExamQuestionsCase> {
	
}