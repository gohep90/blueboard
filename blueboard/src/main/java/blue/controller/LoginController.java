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
	// 회원정보수정 화면
	@RequestMapping(value = "/modify.do")
	public ModelAndView modify(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("modify");
		
		return mv;
	}
		
	// 회원정보수정 화면
	@RequestMapping(value = "/modifyFirst.do")
	public ModelAndView modifyFirst(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> list =null;
		HttpSession session = request.getSession();		//spring session 생성
		
		String userId=(String)session.getAttribute("userId");
		System.out.println("modifyFirst : "+userId);
		
		try{
			map.put("userId", userId);
			
			list = service.selectModify(map);
			
			mv.addObject("modify", list);
			System.out.println("list : "+list);
		
			System.out.println("modifyFirst 성공");
					
		}catch(Exception e){
			System.out.println("modifyFirst 실패");
			return null;
		}
		
		return mv;
	}
	
	// 회원가입 화면
	@RequestMapping(value = "/complete.do")
	public ModelAndView complete(Map<String, Object> Map) throws Exception {
		ModelAndView mv = new ModelAndView("complete");
		return mv;
	}
	// 회원가입 화면
	@RequestMapping(value = "/finish.do")
	public ModelAndView finish(Map<String, Object> Map) throws Exception {
		ModelAndView mv = new ModelAndView("finish");
		return mv;
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout.do")
	public ModelAndView logout(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		HttpSession session = request.getSession();		//spring session 생성
		session.setAttribute("userId", null);
		session.setAttribute("userName", null);
		session.setAttribute("userLike", null);
		
		System.out.println("logout성공");
		
		return mv;
	}
	
	
	// 로그인
	@RequestMapping(value="/checkLogin.do")
	public ModelAndView checkLogin(HttpServletRequest request)throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> list =null;
		
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		
		try{
			map.put("userId", userId);
			map.put("userPw", userPw);
			
			list = service.selectCheckLogin(map);
			
			mv.addObject("checkLogin", list);
			System.out.println("checkLogin :" + list);
		
			System.out.println("checkLogin 성공");
			return mv;
					
		}catch(Exception e){
			System.out.println("checkLogin 실패");
			return null;
		}
	}
	
	// 아이디 중복확인
	@RequestMapping("/checkId.do")
	public ModelAndView checkId(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		Map<String, Object> map = new HashMap<String, Object>();

		String userId = request.getParameter("userId");
		String result ="";
		
		try{	
			map.put("userId", userId);
	
			//아이디가 없는경우
			if(service.checkId(map) == null) {
				result="Y";
			}
			//있는경우
			else {
				result="N";
			}
			mv.addObject("result",result);
		}catch(Exception e){}
		
		return mv;
	}
	
	
	// 회원가입 완료
	@RequestMapping("/insertUser.do")
	public ModelAndView insertUser(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("complete");
		Map<String, Object> map = new HashMap<String, Object>();
		//List<Map<String, Object>> list = null;
		
		String userId = request.getParameter("id");
		String userPw = request.getParameter("pswd1");
		String userName = request.getParameter("nm");
		String userSex = request.getParameter("sex");
		String userBirthday = request.getParameter("birthday");
		String userEmail = request.getParameter("email");
		
		
		System.out.println("userBirthday :"+userBirthday);
		
		if(userSex.equals("0")){
			userSex="남성";
		}else{
			userSex="여성";
		}
		
		try{
			map.put("userId", userId);
			map.put("userPw", userPw);
			map.put("userName", userName);
			map.put("userSex", userSex);
			map.put("userBirthday", userBirthday);
			map.put("userEmail", userEmail);
			
			service.insertUser(map);
			
		}catch(Exception e){
			
		}
		return mv;
	}
	
	
	
	// 페이스북 회원가입 
	@RequestMapping("/checkFacebook.do")
	public ModelAndView checkFacebook(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("main");
		Map<String, Object> map = new HashMap<String, Object>();
		//List<Map<String, Object>> list = null;
		
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userSex = request.getParameter("userSex");
		String userBirthday = request.getParameter("userBirthday");
		String userEmail = request.getParameter("userEmail");
		String userLike = request.getParameter("userLike");
		
		
		System.out.println("==============================");
		System.out.println("userId = "+userId);
		System.out.println("userName = "+userName);
		System.out.println("userSex = "+userSex);
		System.out.println("userBirthday = "+userBirthday);
		System.out.println("userEmail = "+userEmail);
		System.out.println("userLike = "+userLike);
		
		try{
			map.put("userId", userId);
			map.put("userName", userName);
			map.put("userSex", userSex);
			map.put("userBirthday", userBirthday);
			map.put("userEmail", userEmail);
			map.put("userLike", userLike);
			
			if(service.checkId(map) == null) {
				service.insertFacebook(map);
			}
			
			HttpSession session = request.getSession();		//spring session 생성
			session.setAttribute("userId", userId);
			session.setAttribute("userName", userName);
			session.setAttribute("userLike", userLike);
			
			
		}catch(Exception e){
			
		}
		
		return mv;
	}
	
	
	// 회원가입 완료
	@RequestMapping("/modifyUser.do")
	public ModelAndView modifyUser(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("mypage");
		Map<String, Object> map = new HashMap<String, Object>();
		//List<Map<String, Object>> list = null;
		
		String userId = request.getParameter("id");
		String userPw = request.getParameter("pswd1");
		String userName = request.getParameter("nm");
		String userSex = request.getParameter("sex");
		String userBirthday = request.getParameter("birthday");
		String userEmail = request.getParameter("email");
		
		System.out.println("===========modifyUser============");
		System.out.println("userId :"+userId);
		System.out.println("userPw :"+userPw);
		System.out.println("userName :"+userName);
		System.out.println("userSex :"+userSex);
		System.out.println("userBirthday :"+userBirthday);
		System.out.println("userEmail :"+userEmail);
		
		if(userSex.equals("0")){
			userSex="남성";
		}else{
			userSex="여성";
		}
		
		try{
			map.put("userId", userId);
			map.put("userPw", userPw);
			map.put("userName", userName);
			map.put("userSex", userSex);
			map.put("userBirthday", userBirthday);
			map.put("userEmail", userEmail);
			
			service.updateUser(map);
			
		}catch(Exception e){
				
		}
		return mv;
	}
	
}
