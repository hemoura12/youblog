package org.kh.youblog.blog.controller;

import java.util.ArrayList;

import org.kh.youblog.blog.model.service.BlogService;
import org.kh.youblog.blog.model.vo.Blog;
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
	private BlogService blogService;
	
	@RequestMapping(value="test1.do", method=RequestMethod.POST)
	public ModelAndView infoBlog(ModelAndView mv, @RequestParam(value="blogno") String blogno){
		
		System.out.println("Blog Information : " + blogService.infoBlog(blogno));
		
		mv.addObject("blog", blogService.infoBlog(blogno));
		mv.setViewName("home");
		
		return mv;
	}
	
	//
	/*@RequestMapping(value="myblogupdate.do", method=RequestMethod.POST)
	public ModelAndView myBlogupdate(ModelAndView mv, @RequestParam(value="blogno") String blogno) {
		
		System.out.println("컨트롤러 : " + blogService.myBlogUpdate(blogno));
		
		mv.addObject("blog", blogService.myBlogUpdate(blogno));
		mv.setViewName("myBlogUpdate");
		
		return mv;
	}*/
	@RequestMapping(value="myBlogList.do")
	public ModelAndView myBlogList(ModelAndView mv) {
		
		ArrayList<Blog> list = blogService.myBlogList();
		mv.addObject("list", list);
		mv.setViewName("myBlogUpdate");
		
		return mv;
	}
	
	
}
