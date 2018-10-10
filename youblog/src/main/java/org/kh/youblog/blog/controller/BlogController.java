package org.kh.youblog.blog.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.kh.youblog.HomeController;
import org.kh.youblog.blog.model.service.BlogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
//@SessionAttributes("blog")
public class BlogController {
	@Autowired
	private BlogService blogService;
	
	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);

	
	@RequestMapping(value = "category_view.do")
	public ModelAndView categoryView(
			/*HttpServletRequest request,*/
			ModelAndView mv){

		
		mv.addObject("blog", blogService.categoryBlog());
		
		mv.setViewName("category/category");
		
		return mv;
	}
}
