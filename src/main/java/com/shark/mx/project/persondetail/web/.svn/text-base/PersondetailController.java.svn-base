/**
 * Copyright &copy; 2015侠客 All rights reserved.
 */
package com.shark.mx.project.persondetail.web;

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
import com.shark.mx.project.persondetail.entity.Persondetail;
import com.shark.mx.project.persondetail.service.PersondetailService;

/**
 * 就业专项资金补贴人员的明细Controller
 * 
 * @author wujh
 * @version 2015-11-24
 */
@Controller
@RequestMapping(value = "${adminPath}/persondetail/persondetail")
public class PersondetailController extends BaseController {

	@Autowired
	private PersondetailService persondetailService;

	@ModelAttribute
	public Persondetail get(@RequestParam(required = false) String id) {
		Persondetail entity = null;
		if (StringUtils.isNotBlank(id)) {
			entity = persondetailService.get(id);
		}
		if (entity == null) {
			entity = new Persondetail();
		}
		return entity;
	}

//	 @RequiresPermissions("persondetail:persondetail:view")
	@RequiresPermissions(value = { "persondetail:persondetail:view",
			"persondetail:persondetail:edit","persondetail:persondetail:add","persondetail:persondetail:delete" }, logical = Logical.OR)
	@RequestMapping(value = { "list", "" })
	public String list(Persondetail persondetail, HttpServletRequest request,
			HttpServletResponse response, Model model) {
		Page<Persondetail> page = persondetailService.findPage(
				new Page<Persondetail>(request, response), persondetail);
		model.addAttribute("page", page);
		boolean addPermitted = UserUtils.getSubject().isPermitted(
				"persondetail:persondetail:add");
		String addFlag = "";
		if (addPermitted) {
			addFlag = "true";
		}
		return "project/persondetail/persondetailList";
	}

//	@RequiresPermissions("persondetail:persondetail:view")
	@RequiresPermissions(value = { "persondetail:persondetail:view",
			"persondetail:persondetail:edit","persondetail:persondetail:add","persondetail:persondetail:delete" }, logical = Logical.OR)
	@RequestMapping(value = "form")
	public String form(Persondetail persondetail, Model model) {
		model.addAttribute("persondetail", persondetail);
		return "project/persondetail/persondetailForm";
	}

	// @RequiresPermissions("persondetail:persondetail:view")
	@RequiresPermissions(value = { "persondetail:persondetail:view",
			"persondetail:persondetail:edit","persondetail:persondetail:add","persondetail:persondetail:delete" }, logical = Logical.OR)
	@RequestMapping(value = "view")
	public String view(Persondetail persondetail, Model model) {
		model.addAttribute("persondetail", persondetail);
		return "project/persondetail/persondetailView";
	}

	// @RequiresPermissions("persondetail:persondetail:edit")
	@RequiresPermissions(value = {"persondetail:persondetail:edit","persondetail:persondetail:add"}, logical = Logical.OR)
	@RequestMapping(value = "save")
	public String save(Persondetail persondetail, Model model,
			RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, persondetail)) {
			return form(persondetail, model);
		}
		persondetailService.save(persondetail);
		addMessage(redirectAttributes, "保存就业专项资金补贴人员的明细成功");
		return "redirect:" + Global.getAdminPath()
				+ "/persondetail/persondetail/?repage";
	}

	@RequiresPermissions("persondetail:persondetail:delete")
	@RequestMapping(value = "delete")
	public String delete(Persondetail persondetail,
			RedirectAttributes redirectAttributes) {
		persondetailService.delete(persondetail);
		addMessage(redirectAttributes, "删除就业专项资金补贴人员的明细成功");
		return "redirect:" + Global.getAdminPath()
				+ "/persondetail/persondetail/?repage";
	}
	
	/**
	 * 导出数据
	 * @param user
	 * @param request
	 * @param response
	 * @param redirectAttributes
	 * @return
	 */
//	@RequiresPermissions("sys:user:view")
    @RequestMapping(value = "export", method=RequestMethod.POST)
    public String exportFile(Persondetail persondetail, HttpServletRequest request, HttpServletResponse response, RedirectAttributes redirectAttributes) {
		try {
            String fileName = "专项资金人员数据"+DateUtils.getDate("yyyyMMddHHmmss")+".xlsx";
            Page<Persondetail> page = persondetailService.findPage(
    				new Page<Persondetail>(request, response), persondetail);
//            Page<User> page = systemService.findUser(new Page<User>(request, response, -1), user);
    		new ExportExcel("专项资金人员数据", Persondetail.class).setDataList(page.getList()).write(response, fileName).dispose();
    		return null;
		} catch (Exception e) {
			addMessage(redirectAttributes, "导出专项资金人员数据失败！失败信息："+e.getMessage());
		}
		return "redirect:" + adminPath + "/persondetail/persondetail/?repage";
    }

}