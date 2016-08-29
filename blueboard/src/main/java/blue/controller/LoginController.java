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

import blue.service.LoginService;

@Controller
public class LoginController {

	@Resource(name = "LoginService")
	private LoginService service;

	// 로그인 화면
	@RequestMapping(value = "/login.do")
	public ModelAndView login(Map<String, Object> Map) throws Exception {
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	
	// 이용약관 화면
	@RequestMapping(value = "/agreement.do")
	public ModelAndView agreement(Map<String, Object> Map) throws Exception {
		ModelAndView mv = new ModelAndView("agreement");
		return mv;
	}
	
	// 회원가입 화면
	@RequestMapping(value = "/register.do")
	public ModelAndView register(Map<String, Object> Map) throws Exception {
		ModelAndView mv = new ModelAndView("register");
		return mv;
	}	
}
