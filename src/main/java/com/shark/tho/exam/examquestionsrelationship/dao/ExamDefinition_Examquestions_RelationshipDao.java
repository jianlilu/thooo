/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionsrelationship.dao;

import com.shark.base.common.persistence.CrudDao;
import com.shark.base.common.persistence.annotation.MyBatisDao;
import com.shark.tho.exam.examquestionsrelationship.entity.ExamDefinition_Examquestions_Relationship;

/**
 * 考试定义-试题关系DAO接口
 * @author lu
 * @version 2016-12-17
 */
@MyBatisDao
public interface ExamDefinition_Examquestions_RelationshipDao extends CrudDao<ExamDefinition_Examquestions_Relationship> {
	
}