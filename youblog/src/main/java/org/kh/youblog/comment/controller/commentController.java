package org.kh.youblog.comment.controller;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.comment.model.service.CommentService;
import org.kh.youblog.comment.model.vo.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("comment")
public class commentController {
   
   @Autowired
   private CommentService commentService;   
   
   @RequestMapping(value = "list.do")
   public ModelAndView list(ModelAndView mv){

	  String blogno = "1";
      ArrayList<Comment> list = commentService.selectList(blogno);
      mv.addObject("list", list);
      mv.setViewName("manager/commentManage");

      return mv;

   }

   @DeleteMapping(value = "list.do")
   @ResponseBody
   public Object delete(@RequestParam List<Long> ids){
      commentService.remove(ids);
      return "true";

   }
}