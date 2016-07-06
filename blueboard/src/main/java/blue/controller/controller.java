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

import blue.service.service;

@Controller
public class controller {

	@Resource(name = "service")
	private service service;

	//json형식으로 학원 리스트 전송
		@RequestMapping(value="/eduList.do")
		public ModelAndView expenseList(Map<String, Object> Map)throws Exception {
			ModelAndView mv = new ModelAndView("test");
			
			List<Map<String, Object>> list = service.selectEduList(Map);
			
			//System.out.println(list);
			mv.addObject("edu", list);

			return mv;
		}
		
		//리스트
		@RequestMapping(value="/list.do")
		public ModelAndView list(Map<String, Object> Map)throws Exception {
			ModelAndView mv = new ModelAndView("list");
			return mv;
		}
		
		//구분
		@RequestMapping(value="/sector.do")
		public ModelAndView sector(Map<String, Object> Map)throws Exception {
			ModelAndView mv = new ModelAndView("sector");
			return mv;
		}
		
		
		//지도
		@RequestMapping(value="/map.do")
		public ModelAndView map(Map<String, Object> Map)throws Exception {
			ModelAndView mv = new ModelAndView("map");
			return mv;
		}
		
		//리스트
		@RequestMapping(value="/main.do")
		public ModelAndView homepage(Map<String, Object> Map)throws Exception {
			ModelAndView mv = new ModelAndView("main");
			return mv;
		}
		
		//리스트
		@RequestMapping(value="/academy.do")
		public ModelAndView academy(Map<String, Object> Map)throws Exception {
			ModelAndView mv = new ModelAndView("academy");
			return mv;
		}
		
		
		
		//json eduList
		@RequestMapping(value="/firstEdu.do")
			public ModelAndView firstEdu(Map<String, Object> Map,HttpServletRequest request)throws Exception {
				ModelAndView mv = new ModelAndView("jsonView");
				
				//String currentTemp = request.getParameter("current");
						
				//Map.put("current",current);
										
				List<Map<String, Object>> list = service.selectFirstEdu(Map);
				
				mv.addObject("positions", list);
						
				return mv;
			}
		
		
		
		
		//json eduList
		@RequestMapping(value="/eduJson.do")
			public ModelAndView eduJson(Map<String, Object> Map,HttpServletRequest request)throws Exception {
				ModelAndView mv = new ModelAndView("jsonView");
				
				String gu = request.getParameter("gu");
				
				String currentTemp = request.getParameter("current");
				int current = (Integer.parseInt(currentTemp)-1)*10;
				
				Map.put("current",current);
				Map.put("gu",gu);
								
				List<Map<String, Object>> list = service.selectEduList(Map);
				List<Map<String, Object>> count = service.selectCount(Map);
				
				mv.addObject("pagination", count);
				mv.addObject("positions", list);
				
				return mv;
			}
		
		
		
		
		
		//json eduList
		@RequestMapping(value="/listFirst.do")
			public ModelAndView checkId(Map<String, Object> Map,HttpServletRequest request)throws Exception {
				ModelAndView mv = new ModelAndView("jsonView");
						
				String current = request.getParameter("current");
				
				System.out.println(current);
				
				List<Map<String, Object>> count = service.selectCount(Map);
				
				mv.addObject("current", current);
				mv.addObject("pagination", count);
				
				System.out.println(mv);
				return mv;
			}
		
		

		//json updateEdu
		@RequestMapping(value="/updateEdu.do")
			public void updateEdu(HttpServletRequest request)throws Exception {
				Map<String, Object> map = new HashMap<String, Object>();
				
				String seq = request.getParameter("seq");
				String lat = request.getParameter("lat");
				String lng = request.getParameter("lng");
				
				System.out.println("seq:"+seq+"  lat:"+lat+"  lng:"+lng);

				map.put("seq", seq);
				map.put("lat", lat);
				map.put("lng", lng);

				service.updateEdu(map);
					
		}

}
