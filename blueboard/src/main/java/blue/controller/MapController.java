package blue.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blue.service.MapService;

@Controller
public class MapController {

	@Resource(name = "MapService")
	private MapService service;

	// 지도
	@RequestMapping(value = "/map.do")
	public ModelAndView map(Map<String, Object> Map, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("map");
		request.setCharacterEncoding("euc-kr"); // 받아올 때 한글설정

		// String lCategory =request.getParameter("lCategory");
		// System.out.println(lCategory);

		// map.put("month", month);

		// List<Map<String, Object>> list = service.selectCalendar(map);
		// mv.addObject("memoIcon", memoIcon);
		return mv;
	}
	
	
	//json eduList
	@RequestMapping(value="/firstEdu.do")
	public ModelAndView firstEdu(Map<String, Object> Map,HttpServletRequest request)throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = null;
					
		String lCategory = request.getParameter("lCategory");
		String sCategory = request.getParameter("sCategory");
							
			
		try{
			Map.put("lCategory",lCategory);
			Map.put("sCategory",sCategory);
						
			if(sCategory==""){
				list = service.selectFirstEdu(Map);
			}else{
				list = service.selectFirstEduDiv(Map);
			}
			
			
			mv.addObject("positions", list);
		}catch(Exception e){}
		
		return mv;
	}
			
			
	//json eduList
	@RequestMapping(value="/eduJson.do")
	public ModelAndView eduJson(Map<String, Object> Map,HttpServletRequest request)throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
			
		List<Map<String, Object>> list = null;
		List<Map<String, Object>> count = null;
		
		String gu = request.getParameter("gu");
		String lCategory = request.getParameter("lCategory");
		String sCategory = request.getParameter("sCategory");
		String currentTemp = request.getParameter("current");
		int current = (Integer.parseInt(currentTemp)-1)*10;
			
		try{
			Map.put("current",current);
			Map.put("gu",gu);
			Map.put("lCategory",lCategory);
			Map.put("sCategory",sCategory);
						
			if(sCategory==""){
				if(current==0){
					list = service.selectFirstEduList(Map);
				}else{
					list = service.selectEduList(Map);
				}
				count = service.selectCount(Map);
				
			}else{
				if(current==0){
					list = service.selectFirstEduListDiv(Map);
					//System.out.println("list = "+list);
				}else{
					list = service.selectEduListDiv(Map);
				}
				count = service.selectCountDiv(Map);
			}
			
			System.out.println(list);
			mv.addObject("pagination", count);
			mv.addObject("positions", list);
		}catch(Exception e){}
		
		return mv;
	}
}
