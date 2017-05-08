package com.shark.tho.certification.use.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shark.base.common.web.BaseController;
import com.shark.base.modules.sys.entity.User;

/**
 * 调整echarts的Controller
 * @author wujh
 * @version 2015-11-15
 */
@Controller
@RequestMapping(value = "${adminPath}/echartsControl/echartsControl2")
public class EchartsControl2 extends BaseController {
	
//	@Autowired
//	private HouseService houseService;
	
	/**
	 * echarts房屋数量统计
	 */
	@RequestMapping(value = "echartsHouse")
	public String echartsHouse(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
		
		return "modules/sys/eCharts/echartsHouse";
	}
	
	/**
	 * 获取数据
	 * @param request
	 * @param user
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "getData")
	public String getData(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
		List<Map> house = new ArrayList<Map>();//houseService.staticsHouse();
		Map map1 = new HashMap();
		map1.put("value", "2");
		map1.put("name", "软件部");
		
		Map map2 = new HashMap();
		map2.put("value", "3");
		map2.put("name", "工程部");
		
		Map map3 = new HashMap();
		map3.put("value", "1");
		map3.put("name", "商务部");
		
		Map map4 = new HashMap();
		map3.put("value", "5");
		map3.put("name", "办公室");
		
		Map map5 = new HashMap();
		map3.put("value", "5");
		map3.put("name", "信息部");
		
		house.add(map1);
		house.add(map2);
		house.add(map3);
		house.add(map4);
		house.add(map5);
		List yList = new ArrayList();
		List xList = new ArrayList();
		for(Map map : house){
			yList.add(map.get("value"));
			xList.add(map.get("name"));
		}
		Map<String, Object> json = new HashMap<String, Object>();  
	    json.put("categories", xList);  
	    json.put("values", yList);  
		return renderString(response, json);
	}
	
	/**
	 * echarts-test房屋产权数量统计
	 */
	@RequestMapping(value = "staticsHousePropertyRight")
	public String staticsHousePropertyRight(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
		
		return "modules/sys/eCharts/staticsHousePropertyRight";
	}
	
	/**
	 * 获取房屋产权数据
	 * @param request
	 * @param user
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "housePropertyRightData")
	public String housePropertyRightData(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
//		List<Map> housePropertyRight = houseService.staticsHousePropertyRight();
		List yList = new ArrayList();
		List xList = new ArrayList();
//		for(Map map : housePropertyRight){
//			yList.add(map.get("value"));
//			xList.add(map.get("name"));
//		}
		Map<String, Object> json = new HashMap<String, Object>();  
	    json.put("categories", xList);  
	    json.put("values", yList);  
		return renderString(response, json);
	}
	
	/**
	 * echarts楼房数量统计
	 */
	@RequestMapping(value = "staticsUnite")
	public String staticsUnite(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
		
		return "modules/sys/eCharts/staticsUnite";
	}
	
	/**
	 * 获取楼房数据
	 * @param request
	 * @param user
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "uniteData")
	public String uniteData(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
//		List<Map> houseUnite = houseService.staticsUnite();
		List yList = new ArrayList();
		List xList = new ArrayList();
//		for(Map map : houseUnite){
//			yList.add(map.get("value"));
//			xList.add(map.get("name"));
//		}
		Map<String, Object> json = new HashMap<String, Object>();  
	    json.put("categories", xList);  
	    json.put("values", yList);  
		return renderString(response, json);
	}
	
	/**
	 * echarts按户口类型统计人口
	 */
	@RequestMapping(value = "staticsHouseholdType")
	public String staticsHouseholdType(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
		
		return "modules/sys/eCharts/staticsHouseholdType";
	}
	
	/**
	 * 按户口类型统计人口
	 * @param request
	 * @param user
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "householdTypeData")
	public String householdTypeData(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
//		List<Map> householdType = houseService.staticsHouseholdType();
		List yList = new ArrayList();
		List xList = new ArrayList();
//		for(Map map : householdType){
//			yList.add(map.get("value"));
//			xList.add(map.get("name"));
//		}
		Map<String, Object> json = new HashMap<String, Object>();  
	    json.put("categories", xList);  
	    json.put("values", yList);  
		return renderString(response, json);
	}
	
	/**
	 * echarts按企业类型统计单位数量
	 */
	@RequestMapping(value = "staticsCompany")
	public String staticsCompany(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
		
		return "modules/sys/eCharts/staticsCompany";
	}
	
	/**
	 * 按企业类型统计单位数量
	 * @param request
	 * @param user
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "companyData")
	public String companyData(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
//		List<Map> company = houseService.staticsCompany();
		List yList = new ArrayList();
		List xList = new ArrayList();
//		for(Map map : company){
//			yList.add(map.get("value"));
//			xList.add(map.get("name"));
//		}
		Map<String, Object> json = new HashMap<String, Object>();  
	    json.put("categories", xList);  
	    json.put("values", yList);  
		return renderString(response, json);
	}
}
