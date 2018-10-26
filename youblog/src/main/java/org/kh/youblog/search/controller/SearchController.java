package org.kh.youblog.search.controller;

import javax.servlet.http.HttpServletRequest;

import org.kh.youblog.search.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchController {
	@Autowired
	private SearchService sService;
	
	@RequestMapping(value="searchlist.do", method=RequestMethod.GET)
	public ModelAndView boardListService(HttpServletRequest request, ModelAndView mv) {
		String keyword = "";
		
		if(request.getParameter("keyword") != null){
			keyword = request.getParameter("keyword");
				System.out.println("keyword : " + keyword);
		}
		mv.addObject("list", sService.selectSearch(keyword));	
		mv.setViewName("page/searchpage");
		return mv;
	}
	
	
}
