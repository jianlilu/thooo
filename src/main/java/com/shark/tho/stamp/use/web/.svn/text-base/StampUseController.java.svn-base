/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.stamp.use.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.Logical;
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
import com.shark.base.modules.sys.entity.User;
import com.shark.base.modules.sys.utils.UserUtils;
import com.shark.mx.project.persondetail.entity.Persondetail;
import com.shark.tho.stamp.use.entity.StampUse;
import com.shark.tho.stamp.use.service.StampUseService;

/**
 * 印章使用Controller
 * @author lu
 * @version 2016-12-17
 */
@Controller
@RequestMapping(value = "${adminPath}/use/stampUse")
public class StampUseController extends BaseController {

	@Autowired
	private StampUseService stampUseService;
	
	@ModelAttribute
	public StampUse get(@RequestParam(required=false) String id) {
		StampUse entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = stampUseService.get(id);
		}
		if (entity == null){
			entity = new StampUse();
		}
		return entity;
	}
	
	@RequiresPermissions(value = { "use:stampUse:view","use:stampUse:edit",
			"use:stampUse:add","use:stampUse:delete" }, logical = Logical.OR)
	@RequestMapping(value = {"list", ""})
	public String list(StampUse stampUse, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<StampUse> page = stampUseService.findPage(new Page<StampUse>(request, response), stampUse); 
		model.addAttribute("page", page);
		return "stamp/use/stampUseList";
	}

	@RequiresPermissions(value = { "use:stampUse:view","use:stampUse:edit",
			"use:stampUse:add"}, logical = Logical.OR)
	@RequestMapping(value = "form")
	public String form(StampUse stampUse, Model model) {
		
		if(stampUse != null && stampUse.getId() != null && !stampUse.getId().equals("")){
			stampUse = stampUseService.get(stampUse.getId());
		}else {
			User user = UserUtils.getUser();
			stampUse.setCreateBy(user);
			stampUse.setUsingdepartment(user.getOffice());
		}
		
		model.addAttribute("stampUse", stampUse);
		return "stamp/use/stampUseForm";
	}
	
	
	@RequiresPermissions(value = { "use:stampUse:view","use:stampUse:edit"}, logical = Logical.OR)
	@RequestMapping(value = "view")
	public String view(StampUse stampUse, Model model) {
		model.addAttribute("stampUse", stampUse);
		return "stamp/use/stampUseView";
	}

	@RequiresPermissions(value = { "use:stampUse:edit","use:stampUse:add"}, logical = Logical.OR)
	@RequestMapping(value = "save")
	public String save(StampUse stampUse, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, stampUse)){
			return form(stampUse, model);
		}
		stampUseService.save(stampUse);
		addMessage(redirectAttributes, "保存印章使用记录表成功");
		return "redirect:"+Global.getAdminPath()+"/use/stampUse/?repage";
	}
	
	@RequiresPermissions("use:stampUse:delete")
	@RequestMapping(value = "delete")
	public String delete(StampUse stampUse, RedirectAttributes redirectAttributes) {
		
		stampUseService.delete(stampUse);
		addMessage(redirectAttributes, "删除印章使用记录表成功");
		
		return "redirect:"+Global.getAdminPath()+"/use/stampUse/?repage";
	}

}