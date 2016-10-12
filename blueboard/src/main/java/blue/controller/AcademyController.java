package blue.controller;

import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blue.service.AcademyService;


@Controller
public class AcademyController {

	@Resource(name = "AcademyService")
	private AcademyService service;

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
		
		try{
			map.put("userId",userId);
			map.put("academyId",academyId);
			map.put("commentName",commentName);
			map.put("commentTime",commentTime);
			map.put("comment",comment);
						
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
		
		String academyId = request.getParameter("academyId");
			
		try{
			Map.put("academyId",academyId);
						
			list = service.selectCommentList(Map);
			
			System.out.println("commentList = "+list);
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
	
	
	
	
	
	
}
