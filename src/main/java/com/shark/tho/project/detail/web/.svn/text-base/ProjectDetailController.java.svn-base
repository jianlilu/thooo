/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.project.detail.web;

import java.util.Date;

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
import com.shark.base.common.utils.DateUtils;
import com.shark.base.common.utils.StringUtils;
import com.shark.base.common.utils.excel.ExportExcel;
import com.shark.base.common.web.BaseController;
import com.shark.base.modules.sys.entity.User;
import com.shark.base.modules.sys.utils.UserUtils;
import com.shark.tho.project.detail.entity.ProjectDetail;
import com.shark.tho.project.detail.service.ProjectDetailService;
import com.shark.tho.project.progress.entity.ProjectBuildcondition;
import com.shark.tho.project.progress.service.ProjectBuildconditionService;

/**
 * 项目进展明细Controller
 * 
 * @author wujh
 * @version 2016-10-11
 */
@Controller
@RequestMapping(value = "${adminPath}/detail/projectDetail")
public class ProjectDetailController extends BaseController {

	@Autowired
	private ProjectDetailService projectDetailService;
	
	@Autowired
	private ProjectBuildconditionService projectBuildconditionService;

	@ModelAttribute
	public ProjectDetail get(@RequestParam(required = false) String id) {
		ProjectDetail entity = null;
		if (StringUtils.isNotBlank(id)) {
			entity = projectDetailService.get(id);
		}
		if (entity == null) {
			entity = new ProjectDetail();
		}
		return entity;
	}

	// @RequiresPermissions("detail:projectDetail:view")
	@RequiresPermissions(value = { "detail:projectDetail:view",
			"detail:projectDetail:edit", "detail:projectDetail:add",
			"detail:projectDetail:delete" }, logical = Logical.OR)
	@RequestMapping(value = { "list", "" })
	public String list(ProjectDetail projectDetail, HttpServletRequest request,
			HttpServletResponse response, Model model) {
		Page<ProjectDetail> page = projectDetailService.findPage(
				new Page<ProjectDetail>(request, response), projectDetail);
		model.addAttribute("page", page);
		model.addAttribute("projectDetail", projectDetail);
		return "project/detail/projectDetailList";
	}

	// @RequiresPermissions("detail:projectDetail:view")
	@RequiresPermissions(value = { "detail:projectDetail:view",
			"detail:projectDetail:edit", "detail:projectDetail:add",
			"detail:projectDetail:delete" }, logical = Logical.OR)
	@RequestMapping(value = "form")
	public String form(ProjectDetail projectDetail, Model model) {
		User currentUser = UserUtils.getUser();
		projectDetail.setCreateuser(currentUser);
		projectDetail.setCreatetime(new Date());
		ProjectBuildcondition projectBuildcondition = projectBuildconditionService.get(projectDetail.getProjectid());
		projectDetail.setProjectid(projectBuildcondition.getId());
		projectDetail.setProjectname(projectBuildcondition.getProjectname());
		model.addAttribute("projectDetail", projectDetail);

		return "project/detail/projectDetailForm";
	}

	// @RequiresPermissions("detail:projectDetail:edit")
	@RequiresPermissions(value = { "detail:projectDetail:edit",
			"detail:projectDetail:add" }, logical = Logical.OR)
	@RequestMapping(value = "save")
	public String save(ProjectDetail projectDetail, Model model,
			RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, projectDetail)) {
			return form(projectDetail, model);
		}
		projectDetailService.save(projectDetail);
		addMessage(redirectAttributes, "保存项目进展明细成功");
		return "redirect:" + Global.getAdminPath()
				+ "/detail/projectDetail/list?repage&projectid="
				+ projectDetail.getProjectid() + "&projectname="
				+ projectDetail.getProjectname();
	}

	@RequiresPermissions("detail:projectDetail:edit")
	@RequestMapping(value = "delete")
	public String delete(ProjectDetail projectDetail,
			RedirectAttributes redirectAttributes) {
		projectDetailService.delete(projectDetail);
		addMessage(redirectAttributes, "删除项目进展明细成功");
		return "redirect:" + Global.getAdminPath()
				+ "/detail/projectDetail/?repage&projectid="
				+ projectDetail.getProjectid() + "&projectname="
				+ projectDetail.getProjectname();
	}
	
	/**
	 * 导出数据
	 * @param user
	 * @param request
	 * @param response
	 * @param redirectAttributes
	 * @return
	 */
	@RequiresPermissions(value = { "detail:projectDetail:view",
			"detail:projectDetail:edit", "detail:projectDetail:add",
			"detail:projectDetail:delete" }, logical = Logical.OR)
	@RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(ProjectDetail projectDetail, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "项目进度填报数据"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<ProjectDetail> page = projectDetailService.findPage(new Page<ProjectDetail>(request, response, -1), projectDetail);
    		new ExportExcel("项目进度填报数据", ProjectDetail.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出项目进度填报失败！失败信息："+e.getMessage());
		}
		return "redirect:" + Global.getAdminPath()
				+ "/detail/projectDetail/?repage&projectid="
				+ projectDetail.getProjectid() + "&projectname="
				+ projectDetail.getProjectname();
    }

}