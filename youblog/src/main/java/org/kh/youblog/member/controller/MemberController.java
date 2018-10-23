package org.kh.youblog.member.controller;

import java.util.ArrayList;

import org.kh.youblog.comment.model.vo.Comment;
import org.kh.youblog.member.model.service.MemberService;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
														/*@RequestParam(value="subscribeshare") String check*/
	/*@RequestMapping(value="update1.do", method=RequestMethod.GET)
	public ModelAndView updatechanelMethod(ModelAndView mv , ) {
		//System.out.println("controller : " + check);
		//memberService.mychanelupdate(check);
		
		//mv.addObject("member", memberService.mychanelupdate(check));
		mv.setViewName("/manager/chanelManage");
		
		return mv;
	}*/
	
	@RequestMapping(value = "update1.do")
	   public ModelAndView list(ModelAndView mv){

		  //String blogno = "1";
	      ArrayList<Member> list = memberService.selectList();
	      mv.addObject("list", list);
	      mv.setViewName("/manager/chanelManage");

	      return mv;

	   }

	@RequestMapping(value="update1.do", method=RequestMethod.PUT)
	@ResponseBody
	public String updatechanelMethod(ModelAndView mv, @RequestBody Member member) {
		System.out.println("controller : " + member);
		member.setMemberid("user03");
		memberService.mychanelupdate(member);
		return "true";
	}

}
