package org.kh.youblog.blog.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Locale;

import org.kh.youblog.HomeController;
import org.kh.youblog.blog.model.service.BlogService;
import org.kh.youblog.blog.model.vo.Blog;
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
	public ModelAndView categorySelect(@RequestParam(value="cate1") String cate1,
			@RequestParam(value="cate2") String cate2,
			/*HttpServletRequest request,*/
			ModelAndView mv){

		
		mv.addObject("blog", blogService.categoryBlog(cate1, cate2));
		
		mv.setViewName("category/categorySelect");
		
		return mv;
	}
	
	@RequestMapping(value = "categoryList.do")
	public ModelAndView categoryList(
			/*HttpServletRequest request,*/
			ModelAndView mv){

		mv.addObject("cate_lev1", blogService.categoryList_Level1());
		mv.addObject("cate_lev2", blogService.categoryList_Level2());
		
		mv.setViewName("category/categoryList");
		
		return mv;
	}
	
	@RequestMapping(value = "bestList.do")
	public ModelAndView bestBlogList(ModelAndView mv){

		mv.addObject("blog", blogService.bestBlogList());
		mv.setViewName("category/bestList");
		
		return mv;
	}
	
	@RequestMapping(value = "subsList.do")
	public ModelAndView subsBlogList(@RequestParam(value="memberid") String memberid, 
			ModelAndView mv){
		
		ArrayList<Blog> blogList = blogService.subsBlogList(memberid);
		LinkedHashSet<String> writerSet = new LinkedHashSet<String>();

		for(Blog list : blogList){
			writerSet.add(list.getWriterid());
		}
		ArrayList<String> writerList = new ArrayList<String>();
		for(String w : writerSet){
			writerList.add(w);
		}
		
		//저장된 아이디 리스트 넘김
		//jsp에서 배열 아이디 리스트로 확인해서 해당 내용 파라메터로 받음
		//System.out.println(writerArr);
		
		mv.addObject("blog", blogService.subsBlogList(memberid));
		mv.setViewName("subsBlog/subsList");
		
		return mv;
	}
}
