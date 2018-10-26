package org.kh.youblog.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kh.youblog.member.model.service.MemberService;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
@SessionAttributes("member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	//첫 로그인
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public ModelAndView loginMethod(Member member, ModelAndView mv, HttpSession session, SessionStatus status){
		
		
		try {
				member = memberService.selectMember(member);
				if(member != null){				
				mv.addObject(member);
				mv.setViewName("main");
				return mv;
				}else{
					mv.setViewName("member/loginView");
					status.setComplete();
					return mv;
				}
		} catch (Exception e) {
			mv.setViewName("member/loginView");
			status.setComplete();
			return mv;
		}
	
	}
	//로그인 재유도
	@RequestMapping(value="relogin.do", method=RequestMethod.POST)
	public void relogin(Member member, HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		
		String smemberid = request.getParameter("smemberid");
		String smemberpwd = request.getParameter("smemberpwd");
		String returnValue = "0";
		PrintWriter out = response.getWriter();
		System.out.println(smemberid + "< >" + smemberpwd);
		
		try {
			
			member = memberService.selectMember(member);
			if(smemberid.equals(member.getMemberid()) && smemberpwd.equals(member.getMemberpwd())){			
				returnValue = "1";
				response.setContentType("text/html; charset=utf-8");
				out.append(returnValue);
				out.flush();
			}else{
				returnValue = "0";
				response.setContentType("text/html; charset=utf-8");
				out.append(returnValue);
				out.flush();
			}
			
			/*if(smemberid.equals(member.getMemberid()) && smemberpwd.equals(member.getMemberpwd())){
				return "member/passwordchange";
			}else if(member == null){
				System.out.println("틀린 비밀번호입니다");
				return "member/relogin";
			}else{
				return "member/relogin";
			}*/
			
		} catch (Exception e) {
			returnValue = "0";
			response.setContentType("text/html; charset=utf-8");
			out.append(returnValue);
			out.flush();
		}
		out.close();		
	}
	
	@RequestMapping(value="logout.do", method=RequestMethod.POST)
	public String logout(SessionStatus status){		
		status.setComplete();
		return "index";
	}
	
	//가입화면 첫번째
	@RequestMapping(value="mjoin2.do", method=RequestMethod.POST)
	public ModelAndView join2(Member member, 
			ModelAndView mv){
	
		System.out.println(member.toString());
		/*session.setAttribute("member", member);*/
		/*member = memberService.joinmember(member);*/
		mv.addObject("member", member);
		mv.setViewName("member/join2");
		
		return mv;
	}
	
	//가입화면 두번째(최종)
	@RequestMapping(value="insert.do", method=RequestMethod.POST)
	public ModelAndView insert(Member member, 
			ModelAndView mv, SessionStatus status){
	
		System.out.println(member.toString());

		
		try {
			int result = memberService.joinmember(member);
			System.out.println(result);
			
			if(result == 1){				
				mv.addObject("member", member);
				status.setComplete();
				mv.setViewName("main");			
			}else{
				status.setComplete();
				mv.setViewName("member/join");	
			}
		} catch (Exception e) {
				status.setComplete();
				mv.setViewName("member/join");	
		}	
		
		return mv;
	}
	
	//마이페이지
	@RequestMapping(value = "info.do", method = RequestMethod.GET)
	public ModelAndView myinfoMethod(@RequestParam(value="memberid") String memberid, Member member, ModelAndView mv){
		System.out.println("myinfo : " + memberid);
		member = memberService.infoMember(memberid);
		System.out.println(member);
		mv.addObject("member", member);
		mv.setViewName("member/memberinfo");
		return mv;
	}
	
	//비밀번호 변경
	@RequestMapping(value = "updatepw.do", method = RequestMethod.POST)
	public void updatepw(Member member, HttpServletRequest request, 
			HttpServletResponse response, SessionStatus status) throws IOException{
		String inputnow = request.getParameter("inputnow");
		String changepw = request.getParameter("changepw");
		String loginid = request.getParameter("loginid");
		PrintWriter out = response.getWriter();
		String returnValue = "0";
		try {

			member.setMemberpwd(changepw);		
			int result = memberService.updatemember(member);
			System.out.println("결과출력 result = " + result);
			
			if(result == 1){
				status.setComplete();
				returnValue = "1";
				out.append(returnValue);
				out.flush();
			}else if (result == 0){
				out.append(returnValue);
				out.flush();
			}	
			out.close();
		} catch (Exception e) {
			returnValue = "2";
			out.append(returnValue);
			out.flush();
		}
		
		out.close();
		
	}
	
	@RequestMapping(value="updateprofile.do", method=RequestMethod.POST)
		public ModelAndView updateprofile(Member member, ModelAndView mv){

		int result = memberService.updateprofile(member);
	System.out.println(result);
	mv.addObject("member", member);
	mv.setViewName("member/memberinfo");
	
	return mv;
	}	
		
	
	@RequestMapping(value="logout.do")
	public String homemethod(SessionStatus status) throws IOException{
		status.setComplete(); //세션 객체 없앰
		return "main";
		
	}
	
	/*@RequestMapping(value="myinfo.do")
	public ModelAndView myinfoMethod(@RequestParam(value="userid") String userid, ModelAndView mv){
		String userid = request.getParameter("userid");
		System.out.println("myinfo : " + userid);
		
		mv.addObject("member", memberService.infoMember(userid));
		mv.setViewName("member/myinfoView");
		return mv;
		
		
	}*/
	
	/*@RequestMapping(value="changeinfo.do", method=RequestMethod.POST)
	public ModelAndView changeinfoMethod(Member member, 
			ModelAndView mv){
		
			member = memberService.updatemember(member);
		
			
			System.out.println(member);
			mv.addObject("member", member);
			mv.setViewName("member/myinfoView");
				return mv;
	
	}*/
}
