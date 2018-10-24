package org.kh.youblog.session.controller;

import java.util.ArrayList;

import org.kh.youblog.session.model.service.SessionService;
import org.kh.youblog.session.model.vo.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("session")
public class SessionController {
	
	@Autowired
	private SessionService sessionService;
	
	
	@RequestMapping(value="insertSession.do", method = RequestMethod.POST)
	public ModelAndView insertSession(ModelAndView mv,@RequestParam(value="memberid") String memberid){
		
		sessionService.insertSession(memberid);
		
		System.out.println(sessionService.insertSession(memberid));
		mv.setViewName("home");
		
		return mv;
	}
	
	public ModelAndView updateSession(ModelAndView mv, @RequestParam(value="updateSessionList") ArrayList<Session> updateSessionList){
		
		sessionService.updateSession(updateSessionList);
		
		mv.setViewName("test1");
		
		return mv;
	}
	
	public ModelAndView deleteSession(ModelAndView mv, @RequestParam(value="sessionname") String sessionname
																			, @RequestParam(value="memberid") String memberid){
		sessionService.deleteSession(sessionname, memberid);
		
		mv.setViewName("home");
		
		return mv;
		
	}
	
	
	

}
