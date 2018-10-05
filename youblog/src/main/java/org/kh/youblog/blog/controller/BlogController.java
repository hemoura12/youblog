package org.kh.youblog.blog.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.kh.youblog.HomeController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BlogController {

	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	@RequestMapping(value = "category_view.do")
	public ModelAndView categoryView(
			/*HttpServletRequest request,*/
			ModelAndView mv){

		
		mv.addObject("blog", memberService.infoMember(userid));
		
		mv.setViewName("category/catagory");
		
		return mv;
	}
}
