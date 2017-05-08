/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.project.progress.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shark.base.common.config.Global;
import com.shark.base.common.persistence.Page;
import com.shark.base.common.web.BaseController;
import com.shark.base.common.utils.DateUtils;
import com.shark.base.common.utils.StringUtils;
import com.shark.base.common.utils.excel.ExportExcel;
import com.shark.base.modules.sys.entity.User;
import com.shark.mx.project.persondetail.entity.Persondetail;
import com.shark.tho.project.progress.entity.ProjectBuildcondition;
import com.shark.tho.project.progress.service.ProjectBuildconditionService;

/**
 * 公司在建项目施工情况表Controller
 * @author wujh
 * @version 2016-10-10
 */
@Controller
@RequestMapping(value = "${adminPath}/progress/projectBuildcondition")
public class ProjectBuildconditionController extends BaseController {

	@Autowired
	private ProjectBuildconditionService projectBuildconditionService;
	
	@ModelAttribute
	public ProjectBuildcondition get(@RequestParam(required=false) String id) {
		ProjectBuildcondition entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = projectBuildconditionService.get(id);
		}
		if (entity == null){
			entity = new ProjectBuildcondition();
		}
		return entity;
	}
	
//	@RequiresPermissions("progress:projectBuildcondition:view")
	@RequiresPermissions(value = { "progress:projectBuildcondition:view",
			"progress:projectBuildcondition:edit","progress:projectBuildcondition:add","progress:projectBuildcondition:delete" }, logical = Logical.OR)
	@RequestMapping(value = {"list", ""})
	public String list(ProjectBuildcondition projectBuildcondition, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ProjectBuildcondition> page = projectBuildconditionService.findPage(new Page<ProjectBuildcondition>(request, response), projectBuildcondition); 
		model.addAttribute("page", page);
		return "project/progress/projectBuildconditionList";
	}

//	@RequiresPermissions("progress:projectBuildcondition:view")
	@RequiresPermissions(value = { "progress:projectBuildcondition:view",
			"progress:projectBuildcondition:edit","progress:projectBuildcondition:add","progress:projectBuildcondition:delete" }, logical = Logical.OR)
	@RequestMapping(value = "form")
	public String form(ProjectBuildcondition projectBuildcondition, Model model) {
		model.addAttribute("projectBuildcondition", projectBuildcondition);
		return "project/progress/projectBuildconditionForm";
	}

//	@RequiresPermissions(value = { "progress:projectBuildcondition:view",
//			"progress:projectBuildcondition:edit","progress:projectBuildcondition:add","progress:projectBuildcondition:delete" }, logical = Logical.OR)
//	@RequestMapping(value = "view")
//	public String view(Persondetail persondetail, Model model) {
//		model.addAttribute("persondetail", persondetail);
//		return "project/persondetail/persondetailView";
//	}
	
//	@RequiresPermissions("progress:projectBuildcondition:edit")
	@RequiresPermissions(value = {"progress:projectBuildcondition:edit","progress:projectBuildcondition:add"}, logical = Logical.OR)
	@RequestMapping(value = "save")
	public String save(ProjectBuildcondition projectBuildcondition, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, projectBuildcondition)){
			return form(projectBuildcondition, model);
		}
		projectBuildconditionService.save(projectBuildcondition);
		addMessage(redirectAttributes, "保存项目进度信息成功");
		return "redirect:"+Global.getAdminPath()+"/progress/projectBuildcondition/?repage";
	}
	
	@RequiresPermissions("progress:projectBuildcondition:edit")
	@RequestMapping(value = "delete")
	public String delete(ProjectBuildcondition projectBuildcondition, RedirectAttributes redirectAttributes) {
		projectBuildconditionService.delete(projectBuildcondition);
		addMessage(redirectAttributes, "删除项目进度信息成功");
		return "redirect:"+Global.getAdminPath()+"/progress/projectBuildcondition/?repage";
	}
	
	
	/**
	 * 导出数据
	 * @param user
	 * @param request
	 * @param response
	 * @param redirectAttributes
	 * @return
	 */
	@RequiresPermissions(value = { "progress:projectBuildcondition:view",
			"progress:projectBuildcondition:edit","progress:projectBuildcondition:add","progress:projectBuildcondition:delete" }, logical = Logical.OR)
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(ProjectBuildcondition projectBuildcondition, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "项目信息数据"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<ProjectBuildcondition> page = projectBuildconditionService.findPage(new Page<ProjectBuildcondition>(request, response, -1), projectBuildcondition);
    		new ExportExcel("项目信息数据", ProjectBuildcondition.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出项目信息数据失败！失败信息："+e.getMessage());
		}
		return "redirect:" + adminPath + "/progress/projectBuildcondition/list?repage";
    }

}