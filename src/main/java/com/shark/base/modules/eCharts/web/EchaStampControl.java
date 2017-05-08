package com.shark.base.modules.eCharts.web;

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
import com.shark.base.modules.sys.entity.Office;
import com.shark.base.modules.sys.entity.User;
import com.shark.tho.certification.use.entity.CertificationUse;
import com.shark.tho.certification.use.service.CertificationUseService;
import com.shark.tho.stamp.use.entity.StampUse;
import com.shark.tho.stamp.use.service.StampUseService;


@Controller
@RequestMapping(value = "${adminPath}/echartsControl/echaStampControl")
public class EchaStampControl extends BaseController {
	
//	@Autowired
//	private HouseService houseService;
	@Autowired
	private StampUseService stampUseService;
	
	
	@RequestMapping(value = "echaStampControl")
	public String echartsHouse(HttpServletRequest request, User user, HttpServletResponse response, Model model) {
		
		return "modules/sys/eCharts/echartsStamp";
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
		List<Map> house = new ArrayList<Map>();
		
		List<Map> list = stampUseService.findTypeList(new StampUse());
		
		List xList = new ArrayList(); 
		List nameList = new ArrayList(); 
		List totalList = new ArrayList(); 
		
		List certfTotals = new ArrayList();
		
		
		for(Map map : list){
			nameList.add(map.get("name"));
			
			StampUse stampUse = new StampUse();
			Office office = new Office();
			office.setId((String)map.get("id"));
			stampUse.setUsingdepartment(office);
			List<Map> staticList = stampUseService.findStaticListByType(stampUse);
			
			List yList = new ArrayList();
			for(Map mapTemp : staticList){
				yList.add(mapTemp.get("total"));  //每种印章使用的总次数
				xList.add(mapTemp.get("type"));	  //印章类型
			}
			totalList.add(yList); //部门名
			
		}
		
		StampUse stampUse = new StampUse();
		List<Map> certfList = stampUseService.findStaticListByType(stampUse);
		for(Map certMap : certfList){
			certfTotals.add(certMap.get("total"));
		}
		
		Map<String, Object> json = new HashMap<String, Object>();  
	    
	  //过滤掉重复的字符
	    int len = xList.size();
	    for(int i=0; i<len-1; i++){
            String temp = (String)xList.get(i);
            for(int j=i+1; j<len; j++){
                if(temp.equals(xList.get(j))){
                	xList.remove(j); 
                    j-- ;
                    len-- ;
                }
            }
        }
	    
	    json.put("categories", xList);  //印章类别
	    json.put("values", totalList); //借用印章次数
	    
	    json.put("names", nameList); //部门
	    
	    json.put("certfTotals", certfTotals);
	    

	
	    
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
