/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examinationsurveydefinition.web;

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
import com.shark.tho.exam.examinationsurveydefinition.entity.ExaminationSurveyDefinition;
import com.shark.tho.exam.examinationsurveydefinition.service.ExaminationSurveyDefinitionService;

/**
 * 考试-调查定义Controller
 * @author lu
 * @version 2016-12-17
 */
@Controller
@RequestMapping(value = "${adminPath}/examinationsurveydefinition/examinationSurveyDefinition")
public class ExaminationSurveyDefinitionController extends BaseController {

	@Autowired
	private ExaminationSurveyDefinitionService examinationSurveyDefinitionService;
	
	@ModelAttribute
	public ExaminationSurveyDefinition get(@RequestParam(required=false) String id) {
		ExaminationSurveyDefinition entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = examinationSurveyDefinitionService.get(id);
		}
		if (entity == null){
			entity = new ExaminationSurveyDefinition();
		}
		return entity;
	}
	
	@RequiresPermissions("examinationsurveydefinition:examinationSurveyDefinition:view")
	@RequestMapping(value = {"list", ""})
	public String list(ExaminationSurveyDefinition examinationSurveyDefinition, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ExaminationSurveyDefinition> page = examinationSurveyDefinitionService.findPage(new Page<ExaminationSurveyDefinition>(request, response), examinationSurveyDefinition); 
		model.addAttribute("page", page);
		return "exam/examinationsurveydefinition/examinationSurveyDefinitionList";
	}

	@RequiresPermissions("examinationsurveydefinition:examinationSurveyDefinition:view")
	@RequestMapping(value = "form")
	public String form(ExaminationSurveyDefinition examinationSurveyDefinition, Model model) {
		model.addAttribute("examinationSurveyDefinition", examinationSurveyDefinition);
		return "exam/examinationsurveydefinition/examinationSurveyDefinitionForm";
	}

	@RequiresPermissions("examinationsurveydefinition:examinationSurveyDefinition:edit")
	@RequestMapping(value = "save")
	public String save(ExaminationSurveyDefinition examinationSurveyDefinition, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, examinationSurveyDefinition)){
			return form(examinationSurveyDefinition, model);
		}
		examinationSurveyDefinitionService.save(examinationSurveyDefinition);
		addMessage(redirectAttributes, "保存考试-调查定义表成功");
		return "redirect:"+Global.getAdminPath()+"/examinationsurveydefinition/examinationSurveyDefinition/?repage";
	}
	
	@RequiresPermissions("examinationsurveydefinition:examinationSurveyDefinition:edit")
	@RequestMapping(value = "delete")
	public String delete(ExaminationSurveyDefinition examinationSurveyDefinition, RedirectAttributes redirectAttributes) {
		examinationSurveyDefinitionService.delete(examinationSurveyDefinition);
		addMessage(redirectAttributes, "删除考试-调查定义表成功");
		return "redirect:"+Global.getAdminPath()+"/examinationsurveydefinition/examinationSurveyDefinition/?repage";
	}

}