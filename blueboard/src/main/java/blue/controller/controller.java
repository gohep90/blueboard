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

	// 메인화면
	@RequestMapping(value = "/main.do")
	public ModelAndView homepage(Map<String, Object> Map) throws Exception {
		ModelAndView mv = new ModelAndView("main");
		return mv;
	}

	// 강좌 상세정보
	@RequestMapping(value = "/academy.do")
	public ModelAndView academy(Map<String, Object> Map) throws Exception {
		ModelAndView mv = new ModelAndView("academy");
		return mv;
	}
	
	
	//mypage
	@RequestMapping(value = "/mypage.do")
	public ModelAndView mypage(Map<String, Object> Map) throws Exception {
		ModelAndView mv = new ModelAndView("mypage");
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
