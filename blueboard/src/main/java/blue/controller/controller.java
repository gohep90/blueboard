package blue.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	// 메인화면
	@RequestMapping(value = "/main.do")
	public ModelAndView homepage(Map<String, Object> Map) throws Exception {
		ModelAndView mv = new ModelAndView("main");
		return mv;
	}

	// 강좌 상세정보
	@RequestMapping(value = "/academy.do")
	public ModelAndView academy(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("academy");
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> list =null;
		
		String academyId = request.getParameter("academyId");
		
		try{
			map.put("academyId",academyId);
			
			list = service.selectAcademyData(map);
			
			mv.addObject("academy", list);
		}catch(Exception e){}
		
		return mv;
	}
	
	
	//mypage
	@RequestMapping(value = "/mypage.do")
	public String mypage(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();		//spring session 생성
		
		String userId=(String)session.getAttribute("userId");
		
		if(userId!=null){
			return "mypage";
		}else{
			return "login";
		}
		
	}
	
	//mypage
	@RequestMapping(value = "/favorite.do")
	public String favorite(HttpServletRequest request) throws Exception {
			
		HttpSession session = request.getSession();		//spring session 생성
		
		String userId=(String)session.getAttribute("userId");
			
		if(userId!=null){
			return "favorite";
		}else{
			return "login";
		}
	}
	
	
	//json eduList
	@RequestMapping(value="/favoJson.do")
	public ModelAndView eduJson(Map<String, Object> map, HttpServletRequest request)throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
				
		List<Map<String, Object>> list = null;
		List<Map<String, Object>> count = null;
		
		HttpSession session = request.getSession();		//spring session 생성
		
		String userId=(String)session.getAttribute("userId");	
		String currentTemp = request.getParameter("current");
		int current = (Integer.parseInt(currentTemp)-1)*10;
			
		try{
			map.put("userId",userId);
			map.put("current",current);
						
			
			if(current==0){
				list = service.selectFirstFavorite(map);
			}else{
				list =service.selectFavorite(map);
			}
			
			count =service.selectFavoriteCount(map);
			
			
			mv.addObject("positions", list);
			mv.addObject("pagination", count);
			
			System.out.println("list 성공  "+list);
			System.out.println("count 성공  "+count);
			
			System.out.println("favoJson 성공");
		}catch(Exception e){System.out.println("favoJson 실패");}
		
		return mv;
	}
	
	
	
	
	
	
	

	

	// json updateEdu
	@RequestMapping(value = "/updateEdu.do")
	public void updateEdu(HttpServletRequest request) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();

		String seq = request.getParameter("seq");
		String lat = request.getParameter("lat");
		String lng = request.getParameter("lng");

		System.out.println("seq:" + seq + "  lat:" + lat + "  lng:" + lng);

		map.put("seq", seq);
		map.put("lat", lat);
		map.put("lng", lng);

		service.updateEdu(map);

	}

}
