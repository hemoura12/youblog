package org.kh.youblog.member.controller;

import java.io.IOException;
import java.util.List;

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
	
	/*
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public ModelAndView loginMethod(Member member, 
			ModelAndView mv, HttpSession session){
		member = memberService.selectMember(member);
		session.setAttribute("member", member);
		
		mv.addObject(member);
		status.setComplete(); //세션 객체 만듦
		if(member.getUserid().equals("admin"))
			mv.setViewName("main");
		else
			mv.setViewName("member/loginSuccess");
			mv.setViewName("main");
		mv.setViewName("main");
		
		return mv;
	}

	@RequestMapping(value="join2.do", method=RequestMethod.POST)
	public ModelAndView join2(Member member, 
			ModelAndView mv, HttpSession session){
	
		System.out.println(member.toString());
		member = MemberService.joinmember(member);
		mv.addObject("member", member);
		mv.setViewName("member/join2");
		
		return mv;
	}
	
	@RequestMapping(value="insert.do", method=RequestMethod.POST)
	public ModelAndView insert(Member member, 
			ModelAndView mv, HttpSession session){
	
		System.out.println(member.toString());
		member = memberService.joinmember(member);
		mv.addObject("member", member);
		mv.setViewName("member/join2");
		
		return mv;
	}
	
	@RequestMapping(value="join2.do")
	public ModelAndView join2(@RequestParam(value="MEMBER_EMAIL")  
			String MEMBER_EMAIL, @RequestParam(value="MEMBER_PW") String MEMBER_PW, ModelAndView mv){
		
		System.out.println("myinfo : " + MEMBER_EMAIL + MEMBER_PW);
		
		mv.addObject("member", );
		mv.setViewName("member/myinfoView");
		return mv;
		
		
	}
	
	
	@RequestMapping(value="list.do")
	public ModelAndView listMethod(ModelAndView tv){
		System.out.println("요청확인");
		member.setUsername("홍길동");
		member.setAge(27);
		member.setGender("M");
		
		List<Member> list = memberService.selectList();

		ModelAndView mv = new ModelAndView();
		tv.addObject("memberlist", list);
		tv.setViewName("member/memberlistview");
		
		return tv;
	}
	
	@RequestMapping(value="logout.do")
	public String homemethod(SessionStatus status) throws IOException{
		System.out.println("로그아웃요청확인");
		status.setComplete(); //세션 객체 없앰
		return "main";
		
	}
	
	@RequestMapping(value="myinfo.do")
	public ModelAndView myinfoMethod(@RequestParam(value="userid") String userid, ModelAndView mv){
		String userid = request.getParameter("userid");
		System.out.println("myinfo : " + userid);
		
		mv.addObject("member", memberService.infoMember(userid));
		mv.setViewName("member/myinfoView");
		return mv;
		
		
	}
	
	@RequestMapping(value="changeinfo.do", method=RequestMethod.POST)
	public ModelAndView changeinfoMethod(Member member, 
			ModelAndView mv){
		
			member = memberService.updatemember(member);
		
			
			System.out.println(member);
			mv.addObject("member", member);
			mv.setViewName("member/myinfoView");
				return mv;
	
	}*/
}
