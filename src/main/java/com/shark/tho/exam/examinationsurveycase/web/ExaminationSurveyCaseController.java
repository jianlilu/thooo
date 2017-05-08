/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examinationsurveycase.web;

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
import com.shark.tho.exam.examinationsurveycase.entity.ExaminationSurveyCase;
import com.shark.tho.exam.examinationsurveycase.service.ExaminationSurveyCaseService;

/**
 * 考试-调查实例Controller
 * @author lu
 * @version 2016-12-17
 */
@Controller
@RequestMapping(value = "${adminPath}/examinationsurveycase/examinationSurveyCase")
public class ExaminationSurveyCaseController extends BaseController {

	@Autowired
	private ExaminationSurveyCaseService examinationSurveyCaseService;
	
	@ModelAttribute
	public ExaminationSurveyCase get(@RequestParam(required=false) String id) {
		ExaminationSurveyCase entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = examinationSurveyCaseService.get(id);
		}
		if (entity == null){
			entity = new ExaminationSurveyCase();
		}
		return entity;
	}
	
	@RequiresPermissions("examinationsurveycase:examinationSurveyCase:view")
	@RequestMapping(value = {"list", ""})
	public String list(ExaminationSurveyCase examinationSurveyCase, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ExaminationSurveyCase> page = examinationSurveyCaseService.findPage(new Page<ExaminationSurveyCase>(request, response), examinationSurveyCase); 
		model.addAttribute("page", page);
		return "exam/examinationsurveycase/examinationSurveyCaseList";
	}

	@RequiresPermissions("examinationsurveycase:examinationSurveyCase:view")
	@RequestMapping(value = "form")
	public String form(ExaminationSurveyCase examinationSurveyCase, Model model) {
		model.addAttribute("examinationSurveyCase", examinationSurveyCase);
		return "exam/examinationsurveycase/examinationSurveyCaseForm";
	}

	@RequiresPermissions("examinationsurveycase:examinationSurveyCase:edit")
	@RequestMapping(value = "save")
	public String save(ExaminationSurveyCase examinationSurveyCase, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, examinationSurveyCase)){
			return form(examinationSurveyCase, model);
		}
		examinationSurveyCaseService.save(examinationSurveyCase);
		addMessage(redirectAttributes, "保存考试-调查实例表成功");
		return "redirect:"+Global.getAdminPath()+"/examinationsurveycase/examinationSurveyCase/?repage";
	}
	
	@RequiresPermissions("examinationsurveycase:examinationSurveyCase:edit")
	@RequestMapping(value = "delete")
	public String delete(ExaminationSurveyCase examinationSurveyCase, RedirectAttributes redirectAttributes) {
		examinationSurveyCaseService.delete(examinationSurveyCase);
		addMessage(redirectAttributes, "删除考试-调查实例表成功");
		return "redirect:"+Global.getAdminPath()+"/examinationsurveycase/examinationSurveyCase/?repage";
	}

}