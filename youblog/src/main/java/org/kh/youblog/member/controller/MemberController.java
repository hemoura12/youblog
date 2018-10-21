package org.kh.youblog.member.controller;

import org.kh.youblog.member.model.service.MemberService;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("member")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value="update1.do", method=RequestMethod.GET)
	public ModelAndView updatechanelMethod(ModelAndView mv , @RequestParam(value="subscribeshare") String check) {
		System.out.println("controller : " + check);
		memberService.mychanelupdate(check);
		
		mv.addObject("member", memberService.mychanelupdate(check));
		mv.setViewName("chanelManage");
		
		return mv;
	}

	/*@RequestMapping(value="update1.do", method=RequestMethod.POST)
	public ModelAndView updatechanelMethod(ModelAndView mv, Member member) {
		System.out.println("controller : " + member);
		member = memberService.mychanelupdate(member);
	
		return mv;
	}*/

}
