package org.kh.youblog.blog.controller;

import org.kh.youblog.blog.model.service.BlogService;
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
	
	@RequestMapping(value="test1.do", method=RequestMethod.POST)
	public ModelAndView infoBlog(ModelAndView mv, @RequestParam(value="blogno") String blogno){
		
		System.out.println("Blog Information : " + blogSerivce.infoBlog(blogno));
		
		
		
		mv.addObject("blog", blogSerivce.infoBlog(blogno));
		mv.setViewName("home");
		
		return mv;
		
		
	}
	
	
	
}
