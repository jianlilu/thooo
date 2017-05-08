/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionsdefinition.web;

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
import com.shark.tho.exam.examquestionsdefinition.entity.ExamQuestionsDefinition;
import com.shark.tho.exam.examquestionsdefinition.service.ExamQuestionsDefinitionService;

/**
 * 试题定义Controller
 * @author lu
 * @version 2016-12-19
 */
@Controller
@RequestMapping(value = "${adminPath}/examquestionsdefinition/examQuestionsDefinition")
public class ExamQuestionsDefinitionController extends BaseController {

	@Autowired
	private ExamQuestionsDefinitionService examQuestionsDefinitionService;
	
	@ModelAttribute
	public ExamQuestionsDefinition get(@RequestParam(required=false) String id) {
		ExamQuestionsDefinition entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = examQuestionsDefinitionService.get(id);
		}
		if (entity == null){
			entity = new ExamQuestionsDefinition();
		}
		return entity;
	}
	
	@RequiresPermissions("examquestionsdefinition:examQuestionsDefinition:view")
	@RequestMapping(value = {"list", ""})
	public String list(ExamQuestionsDefinition examQuestionsDefinition, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ExamQuestionsDefinition> page = examQuestionsDefinitionService.findPage(new Page<ExamQuestionsDefinition>(request, response), examQuestionsDefinition); 
		model.addAttribute("page", page);
		return "exam/examquestionsdefinition/examQuestionsDefinitionList";
	}

	@RequiresPermissions("examquestionsdefinition:examQuestionsDefinition:view")
	@RequestMapping(value = "form")
	public String form(ExamQuestionsDefinition examQuestionsDefinition, Model model) {
		model.addAttribute("examQuestionsDefinition", examQuestionsDefinition);
		return "exam/examquestionsdefinition/examQuestionsDefinitionForm";
	}

	@RequiresPermissions("examquestionsdefinition:examQuestionsDefinition:edit")
	@RequestMapping(value = "save")
	public String save(ExamQuestionsDefinition examQuestionsDefinition, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, examQuestionsDefinition)){
			return form(examQuestionsDefinition, model);
		}
		examQuestionsDefinitionService.save(examQuestionsDefinition);
		addMessage(redirectAttributes, "保存试题定义表成功");
		return "redirect:"+Global.getAdminPath()+"/examquestionsdefinition/examQuestionsDefinition/?repage";
	}
	
	@RequiresPermissions("examquestionsdefinition:examQuestionsDefinition:edit")
	@RequestMapping(value = "delete")
	public String delete(ExamQuestionsDefinition examQuestionsDefinition, RedirectAttributes redirectAttributes) {
		examQuestionsDefinitionService.delete(examQuestionsDefinition);
		addMessage(redirectAttributes, "删除试题定义表成功");
		return "redirect:"+Global.getAdminPath()+"/examquestionsdefinition/examQuestionsDefinition/?repage";
	}

}