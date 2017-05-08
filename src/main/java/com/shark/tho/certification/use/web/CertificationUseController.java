/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.tho.certification.use.web;

import java.util.List;

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
import com.shark.base.common.utils.StringUtils;
import com.shark.base.common.web.BaseController;
import com.shark.base.modules.sys.entity.Role;
import com.shark.base.modules.sys.entity.User;
import com.shark.base.modules.sys.utils.UserUtils;
import com.shark.tho.certification.use.entity.CertificationUse;
import com.shark.tho.certification.use.service.CertificationUseService;
import com.shark.tho.stamp.use.entity.StampUse;

/**
 * 证书管理Controller
 * @author lu
 * @version 2016-12-17
 */
@Controller
@RequestMapping(value = "${adminPath}/use/certificationUse")
public class CertificationUseController extends BaseController {

	@Autowired
	private CertificationUseService certificationUseService;
	
	@ModelAttribute
	public CertificationUse get(@RequestParam(required=false) String id) {
		CertificationUse entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = certificationUseService.get(id);
		}
		if (entity == null){
			entity = new CertificationUse();
		}
		return entity;
	}
	
	@RequiresPermissions(value = { "use:certificationUse:view","use:certificationUse:edit",
			"use:certificationUse:add","use:certificationUse:delete" }, logical = Logical.OR)
	@RequestMapping(value = {"list", ""})
	public String list(CertificationUse certificationUse, HttpServletRequest request, HttpServletResponse response, Model model) {
		
		Page<CertificationUse> page = certificationUseService.findPage(new Page<CertificationUse>(request, response), certificationUse); 
		model.addAttribute("page", page);
		return "certification/use/certificationUseList";
	}

	@RequiresPermissions(value = { "use:certificationUse:view","use:certificationUse:edit",
			"use:certificationUse:add"}, logical = Logical.OR)
	@RequestMapping(value = "form")
	public String form(CertificationUse certificationUse, Model model) {
		
		if(certificationUse != null && certificationUse.getId() != null && !certificationUse.getId().equals("")){
			certificationUse = certificationUseService.get(certificationUse.getId());
			
		}else {
			User user = UserUtils.getUser();
			certificationUse.setCreateBy(user);
			certificationUse.setUsingdepartment(user.getOffice());
			
		}
		
		model.addAttribute("certificationUse", certificationUse);
		return "certification/use/certificationUseForm";
	}
	

	@RequiresPermissions(value = { "use:certificationUse:view","use:certificationUse:edit"}, logical = Logical.OR)
	@RequestMapping(value = "view")
	public String view(CertificationUse certificationUse, Model model) {
		model.addAttribute("certificationUse", certificationUse);
		return "certification/use/certificationUseView";
	}
	

	@RequiresPermissions(value = { "use:certificationUse:edit","use:certificationUse:add" }, logical = Logical.OR)
	@RequestMapping(value = "save")
	public String save(CertificationUse certificationUse, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, certificationUse)){
			return form(certificationUse, model);
		}
		
		certificationUseService.save(certificationUse);
		addMessage(redirectAttributes, "保存证书借用记录表成功");
		return "redirect:"+Global.getAdminPath()+"/use/certificationUse/?repage";
	}
	
	@RequiresPermissions(value = {"use:certificationUse:delete" }, logical = Logical.OR)
	@RequestMapping(value = "delete")
	public String delete(CertificationUse certificationUse, RedirectAttributes redirectAttributes) {
		
		certificationUseService.delete(certificationUse);
		addMessage(redirectAttributes, "删除证书借用记录表成功");
		
		return "redirect:" + Global.getAdminPath()+"/use/certificationUse/?repage";
	}

}