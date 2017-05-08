/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionsrelationship.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shark.base.common.config.Global;
import com.shark.base.common.persistence.Page;
import com.shark.base.common.web.BaseController;
import com.shark.base.common.utils.StringUtils;
import com.shark.tho.exam.examquestionsrelationship.entity.ExamDefinition_Examquestions_Relationship;
import com.shark.tho.exam.examquestionsrelationship.service.ExamDefinition_Examquestions_RelationshipService;

/**
 * 考试定义-试题关系Controller
 * @author lu
 * @version 2016-12-17
 */
@Controller
@RequestMapping(value = "${adminPath}/examquestionsrelationship/examDefinition_Examquestions_Relationship")
public class ExamDefinition_Examquestions_RelationshipController extends BaseController {

	@Autowired
	private ExamDefinition_Examquestions_RelationshipService examDefinition_Examquestions_RelationshipService;
	
	@ModelAttribute
	public ExamDefinition_Examquestions_Relationship get(@RequestParam(required=false) String id) {
		ExamDefinition_Examquestions_Relationship entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = examDefinition_Examquestions_RelationshipService.get(id);
		}
		if (entity == null){
			entity = new ExamDefinition_Examquestions_Relationship();
		}
		return entity;
	}
	
	@RequiresPermissions("examquestionsrelationship:examDefinition_Examquestions_Relationship:view")
	@RequestMapping(value = {"list", ""})
	public String list(ExamDefinition_Examquestions_Relationship examDefinition_Examquestions_Relationship, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ExamDefinition_Examquestions_Relationship> page = examDefinition_Examquestions_RelationshipService.findPage(new Page<ExamDefinition_Examquestions_Relationship>(request, response), examDefinition_Examquestions_Relationship); 
		model.addAttribute("page", page);
		return "exam/examquestionsrelationship/examDefinition_Examquestions_RelationshipList";
	}

	@RequiresPermissions("examquestionsrelationship:examDefinition_Examquestions_Relationship:view")
	@RequestMapping(value = "form")
	public String form(ExamDefinition_Examquestions_Relationship examDefinition_Examquestions_Relationship, Model model) {
		model.addAttribute("examDefinition_Examquestions_Relationship", examDefinition_Examquestions_Relationship);
		return "exam/examquestionsrelationship/examDefinition_Examquestions_RelationshipForm";
	}

	@RequiresPermissions("examquestionsrelationship:examDefinition_Examquestions_Relationship:edit")
	@RequestMapping(value = "save")
	public String save(ExamDefinition_Examquestions_Relationship examDefinition_Examquestions_Relationship, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, examDefinition_Examquestions_Relationship)){
			return form(examDefinition_Examquestions_Relationship, model);
		}
		examDefinition_Examquestions_RelationshipService.save(examDefinition_Examquestions_Relationship);
		addMessage(redirectAttributes, "保存考试定义-试题关系表成功");
		return "redirect:"+Global.getAdminPath()+"/examquestionsrelationship/examDefinition_Examquestions_Relationship/?repage";
	}
	
	@RequiresPermissions("examquestionsrelationship:examDefinition_Examquestions_Relationship:edit")
	@RequestMapping(value = "delete")
	public String delete(ExamDefinition_Examquestions_Relationship examDefinition_Examquestions_Relationship, RedirectAttributes redirectAttributes) {
		examDefinition_Examquestions_RelationshipService.delete(examDefinition_Examquestions_Relationship);
		addMessage(redirectAttributes, "删除考试定义-试题关系表成功");
		return "redirect:"+Global.getAdminPath()+"/examquestionsrelationship/examDefinition_Examquestions_Relationship/?repage";
	}

}