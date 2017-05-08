package com.shark.base.modules.sys.mainframe;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shark.base.common.web.BaseController;

@Controller
@RequestMapping(value = "${adminPath}/sys/mainFrame")
public class MainFrameController extends BaseController{
	
	/**
	 * 系统主框架(管理员)
	 */
	@RequestMapping(value = "adminMain")
	public String adminMain(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "modules/sys/new/adminMain";
	}
	
	/**
	 * 系统主框架
	 */
	@RequestMapping(value = "main")
	public String main(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "modules/sys/new/main";
	}
	
	/**
	 * 系统头部(管理员)
	 */
	@RequestMapping(value = "adminTop")
	public String adminTop(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "modules/sys/new/adminTop";
	}
	
	/**
	 * 系统头部
	 */
	@RequestMapping(value = "top")
	public String top(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "modules/sys/new/top";
	}
	
	/**
	 * 系统左侧
	 */
	@RequestMapping(value = "left")
	public String left(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "modules/sys/new/left";
	}
	
	/**
	 * 系统中间内容
	 */
	@RequestMapping(value = "index")
	public String index(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "modules/sys/new/index";
	}
	
	/**
	 * 系统底部
	 */
	@RequestMapping(value = "footer")
	public String footer(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "modules/sys/new/footer";
	}
	
	/**
	 * 个人设置
	 */
	@RequestMapping(value = "setting")
	public String setting(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "modules/sys/new/sysAdminIndex";
	}
}
