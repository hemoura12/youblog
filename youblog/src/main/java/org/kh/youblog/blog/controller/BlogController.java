package org.kh.youblog.blog.controller;

import java.util.ArrayList;

import org.kh.youblog.blog.model.service.BlogService;
import org.kh.youblog.blog.model.vo.Blog;
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
@SessionAttributes("blog")

public class BlogController {

	@Autowired
	private BlogService blogSerivce;
	
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value="personmain.do", method=RequestMethod.POST) //개인 블로그 리스트 호출
	public ModelAndView infoBlog(ModelAndView mv, @RequestParam(value="writerid") String writerid){
		
		writerid = "user01";
		
		ArrayList<Blog> blog = blogSerivce.selectBlogList(writerid);
		Member member = memberService.selectBlogMember(writerid);
		
		
		mv.addObject("blog", blog);//Blog객체 리턴받음
		mv.addObject("member", member);
				
		mv.setViewName("personblog/personmain");
		
		return mv;
	}
	
	
	
	
	
}
