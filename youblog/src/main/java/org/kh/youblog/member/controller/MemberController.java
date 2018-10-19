package org.kh.youblog.member.controller;

import java.util.ArrayList;

import org.kh.youblog.member.model.service.MemberService;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("Member")
public class MemberController {

	@Autowired
	private MemberService memberservice;
	
	/*@RequestMapping(value="Memberlist.do")
    public String coding() {
        return "Memberlist";
    }*/
	
	@RequestMapping(value="member.do")
	public ModelAndView list(ModelAndView mv){
		
		ArrayList<Member> list = memberservice.selectList();
		mv.addObject("list", list);
		mv.setViewName("member");
		
		return mv;
		
	}
}






