package blue.controller;

import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import blue.service.AcademyService;


@Controller
public class AcademyController {

	@Resource(name = "AcademyService")
	private AcademyService service;
	
	
	// 강의 등록 화면
	@RequestMapping(value = "/academyRegister.do")
	public ModelAndView academyRegister(Map<String, Object> Map) throws Exception {
		ModelAndView mv = new ModelAndView("academyRegister");
		return mv;
	}
	
	
	// 강의 등록
	@RequestMapping("/insertAcademy.do")
	public ModelAndView insertUser(Map<String, Object> map,HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = null;
		
		
		HttpSession session = request.getSession();		//spring session 생성
		String userId=(String)session.getAttribute("userId");
		
		String teacherName = request.getParameter("teacherName");
		String teacherTel = request.getParameter("teacherTel");
		String teacherCareer = request.getParameter("teacherCareer");
		String teacherIntro = request.getParameter("teacherIntro");
		
		String academyName = request.getParameter("academyName");
		String academyTerm = request.getParameter("academyTerm");
		String academyWeek = request.getParameter("academyWeek");
		String academyTime = request.getParameter("academyTime");
		String academyTotal = request.getParameter("academyTotal");
		String academyPay = request.getParameter("academyPay");
		String academyIntro = request.getParameter("academyIntro");
		String academyCurriculum = request.getParameter("academyCurriculum");
		String lCategory = request.getParameter("lCategory");
		String sCategory = request.getParameter("sCategory");
		String academyAddress = request.getParameter("academyAddress");
		String lat = request.getParameter("lat");
		String lng = request.getParameter("lng");
		
		/*
		System.out.println("teacherName :"+teacherName);
		System.out.println("teacherTel :"+teacherTel);
		System.out.println("teacherCareer :"+teacherCareer);
		System.out.println("teacherIntro :"+teacherIntro);
		
		
		System.out.println("academyName :"+academyName);
		System.out.println("academyTerm :"+academyTerm);
		System.out.println("academyWeek :"+academyWeek);
		System.out.println("academyTime :"+academyTime);
		System.out.println("academyTotal :"+academyTotal);
		System.out.println("academyPay :"+academyPay);
		System.out.println("academyIntro :"+academyIntro);
		System.out.println("academyCurriculum :"+academyCurriculum);
		System.out.println("lCategory :"+lCategory);
		System.out.println("sCategory :"+sCategory);
		System.out.println("academyAddress :"+academyAddress);
		*/
		
		try{
		
			map.put("userId", userId);
			
			map.put("teacherName", teacherName);
			map.put("teacherTel", teacherTel);
			map.put("teacherCareer", teacherCareer);
			map.put("teacherIntro", teacherIntro);
			
			map.put("academyName", academyName);
			map.put("academyTerm", academyTerm);
			map.put("academyWeek", academyWeek);
			map.put("academyTime", academyTime);
			map.put("academyTotal", academyTotal);
			map.put("academyPay", academyPay);
			map.put("academyIntro", academyIntro);
			map.put("academyCurriculum", academyCurriculum);
			map.put("lCategory", lCategory);
			map.put("sCategory", sCategory);
			map.put("academyAddress", academyAddress);
			map.put("lat", lat);
			map.put("lng", lng);
			
			service.insertAcademy(map);
		
			//insert후 key값 받아오기
			mv.addObject("academyId", map.get("academyId"));
			//service.insertUser(map);
			
		}catch(Exception e){
			
		}
		return mv;
	}
	
	
	
	// 사진등록
	@RequestMapping("/insertPhoto.do")
	public ModelAndView insertPhoto(Map<String, Object> map, MultipartHttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("academyAdmin");
		
		String academyId = request.getParameter("academyId");
		
		try{
			
			MultipartHttpServletRequest mt = (MultipartHttpServletRequest)request;
			Iterator<String> iterator = mt.getFileNames();
				
			MultipartFile multipartFile = null;
		    while(iterator.hasNext()){
		        multipartFile = mt.getFile(iterator.next());
		        if(multipartFile.isEmpty() == false){
		        	String genId = UUID.randomUUID().toString().substring(0,3);
		        	String saveFile= genId+"_"+multipartFile.getOriginalFilename();
		            System.out.println("------------- file start -------------");
		            System.out.println("name : "+multipartFile.getName());
		            System.out.println("original : "+multipartFile.getOriginalFilename());
		            System.out.println("savename : "+saveFile);
		            System.out.println("size : "+multipartFile.getSize());
		            System.out.println("-------------- file end --------------\n");
		            String savePath ="C:/Users/Park/git/blueboard/blueboard/src/main/webapp/images/academy/"+saveFile;
		            File file =new File(savePath);
		            multipartFile.transferTo(file);
		            
		            map.put(multipartFile.getName(), saveFile);
		        }
		    }

		    
			map.put("academyId", academyId);
			
			service.insertPhoto(map);
			
			
			System.out.println("insertPhoto 성공");
		}catch(Exception e){
			System.out.println("insertPhoto 실패");
		}
		return mv;
	}
	
	
	//json eduList
	@RequestMapping(value="/deleteAcademy.do")
	public ModelAndView deleteAcademy(Map<String, Object> map,HttpServletRequest request)throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		String academyId = request.getParameter("academyId");
			
		try{
			map.put("academyId",academyId);
						
			service.deleteAcademy(map);
			
			mv.addObject("result", "yes");
		
			System.out.println("deleteAcademy 성공");
		}catch(Exception e){System.out.println("deleteAcademy 실패");}
		
		return mv;
	}
	
	
	
	// 강좌 수정
	@RequestMapping(value = "/academyModify.do")
	public ModelAndView academyModify(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("academyModify");
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
	
	
	//댓글등록
	@RequestMapping(value="/insertComment.do")
	public ModelAndView insertComment(Map<String, Object> map,HttpServletRequest request)throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
			
		HttpSession session = request.getSession();		//spring session 생성
		
		String userId=(String)session.getAttribute("userId");
		String academyId= request.getParameter("academyId");
		String commentName= request.getParameter("commentName");
		String commentTime= request.getParameter("commentTime");
		String comment= request.getParameter("comment");
		String commentStar= request.getParameter("commentStar");
		
		try{
			map.put("userId",userId);
			map.put("academyId",academyId);
			map.put("commentName",commentName);
			map.put("commentTime",commentTime);
			map.put("comment",comment);
			map.put("commentStar",commentStar);
						
			service.insertComment(map);
			
			mv.addObject("result", "yes");
		
			System.out.println("insertComment 성공");
		}catch(Exception e){System.out.println("insertComment 실패");}
		
		return mv;
	}
	
	//댓글 리스트 출력
	@RequestMapping(value="/commentList.do")
	public ModelAndView commentList(Map<String, Object> Map,HttpServletRequest request)throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = null;
		List<Map<String, Object>> count = null;
		
		String academyId = request.getParameter("academyId");
			
		try{
			Map.put("academyId",academyId);
						
			list = service.selectCommentList(Map);
			count= service.selectCount(Map);
			
			mv.addObject("count", count);
			mv.addObject("commentList", list);
			
			System.out.println("commentList 성공");
		}catch(Exception e){System.out.println("commentList 실패");}
		
		return mv;
	}
	
	//댓글등록
	@RequestMapping(value="/deleteComment.do")
	public ModelAndView deleteComment(Map<String, Object> map,HttpServletRequest request)throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
			
		String academyId= request.getParameter("academyId");
		String commentSeq= request.getParameter("commentSeq");
		
		try{
			map.put("academyId",academyId);
			map.put("commentSeq",commentSeq);
						
			service.deleteComment(map);
			
			mv.addObject("result", "yes");
		
			System.out.println("deleteComment 성공");
		}catch(Exception e){System.out.println("deleteComment 실패");}
		
		return mv;
	}
	
	
	
	// 유저 상세정보
	@RequestMapping(value = "/userInfo.do")
	public ModelAndView userInfo(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> list =null;
		
		HttpSession session = request.getSession();		//spring session 생성
		
		String userId=(String)session.getAttribute("userId");
		
		try{
			map.put("userId",userId);
			
			list = service.selectUserInfo(map);
			
			mv.addObject("userInfo", list);
			
		}catch(Exception e){}
		
		return mv;
	}
	
	
	
	
	
	
}
