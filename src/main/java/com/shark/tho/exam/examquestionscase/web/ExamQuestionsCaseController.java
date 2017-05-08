/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.exam.examquestionscase.web;

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
import com.shark.tho.exam.examquestionscase.entity.ExamQuestionsCase;
import com.shark.tho.exam.examquestionscase.service.ExamQuestionsCaseService;

/**
 * 试题实例Controller
 * @author lu
 * @version 2016-12-17
 */
@Controller
@RequestMapping(value = "${adminPath}/examquestionscase/examQuestionsCase")
public class ExamQuestionsCaseController extends BaseController {

	@Autowired
	private ExamQuestionsCaseService examQuestionsCaseService;
	
	@ModelAttribute
	public ExamQuestionsCase get(@RequestParam(required=false) String id) {
		ExamQuestionsCase entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = examQuestionsCaseService.get(id);
		}
		if (entity == null){
			entity = new ExamQuestionsCase();
		}
		return entity;
	}
	
	@RequiresPermissions("examquestionscase:examQuestionsCase:view")
	@RequestMapping(value = {"list", ""})
	public String list(ExamQuestionsCase examQuestionsCase, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ExamQuestionsCase> page = examQuestionsCaseService.findPage(new Page<ExamQuestionsCase>(request, response), examQuestionsCase); 
		model.addAttribute("page", page);
		return "exam/examquestionscase/examQuestionsCaseList";
	}

	@RequiresPermissions("examquestionscase:examQuestionsCase:view")
	@RequestMapping(value = "form")
	public String form(ExamQuestionsCase examQuestionsCase, Model model) {
		model.addAttribute("examQuestionsCase", examQuestionsCase);
		return "exam/examquestionscase/examQuestionsCaseForm";
	}

	@RequiresPermissions("examquestionscase:examQuestionsCase:edit")
	@RequestMapping(value = "save")
	public String save(ExamQuestionsCase examQuestionsCase, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, examQuestionsCase)){
			return form(examQuestionsCase, model);
		}
		examQuestionsCaseService.save(examQuestionsCase);
		addMessage(redirectAttributes, "保存试题实例表成功");
		return "redirect:"+Global.getAdminPath()+"/examquestionscase/examQuestionsCase/?repage";
	}
	
	@RequiresPermissions("examquestionscase:examQuestionsCase:edit")
	@RequestMapping(value = "delete")
	public String delete(ExamQuestionsCase examQuestionsCase, RedirectAttributes redirectAttributes) {
		examQuestionsCaseService.delete(examQuestionsCase);
		addMessage(redirectAttributes, "删除试题实例表成功");
		return "redirect:"+Global.getAdminPath()+"/examquestionscase/examQuestionsCase/?repage";
	}

}