package org.kh.youblog.comment.controller;

import java.util.ArrayList;
import org.kh.youblog.comment.model.service.CommentService;
import org.kh.youblog.comment.model.vo.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("Comment")
public class commentController {

	
	@Autowired
	private CommentService commentservice;	
	
	@RequestMapping(value = "comment.do")
	   public ModelAndView list(ModelAndView mv){
	      
	      ArrayList<Comment> list = commentservice.selectList();
	      mv.addObject("list", list);
	      mv.setViewName("comment");
	      
	      
	      return mv;
	      
	   }
}
