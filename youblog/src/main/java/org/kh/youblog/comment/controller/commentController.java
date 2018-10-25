package org.kh.youblog.comment.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.kh.youblog.comment.model.service.CommentService;
import org.kh.youblog.comment.model.vo.Comment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class commentController {

	@Resource(name="commentService")
	CommentService commentService;
	
/*	@RequestMapping(value="/comment.do")
	public ModelAndView commentView(ModelAndView mv){
		
		mv.setViewName("comment");
		return mv;
	}*/
	
	@RequestMapping(value="/insertComment.do", method=RequestMethod.POST)
	@ResponseBody
	public JSONObject insertComment( @RequestBody Comment com, HttpServletResponse response) {
		response.setContentType("application/json; charset=utf-8");
		JSONObject job = new JSONObject();
		try{
			commentService.insertComment(com);
			job.put("message","댓글이 등록 되었습니다. ");
		}catch(Exception e){
			e.printStackTrace();
			job.put("message","잠시 후 다시 시도해주세요.");
		}
		return job;
	}
	
	@RequestMapping(value="/updateComment.do", method=RequestMethod.POST)
	@ResponseBody
	public JSONObject updateComment( @RequestBody Comment com, HttpServletResponse response) {
		response.setContentType("application/json; charset=utf-8");
		JSONObject job = new JSONObject();
		try{
			commentService.updateComment(com);
			job.put("message","댓글이 수정 되었습니다. ");
		}catch(Exception e){
			e.printStackTrace();
			job.put("message","잠시 후 다시 시도해주세요.");
		}
		return job;
	}
	
	@RequestMapping(value="/deleteComment.do", method=RequestMethod.POST)
	@ResponseBody
	public JSONObject deleteComment( @RequestBody Comment com, HttpServletResponse response) {
		response.setContentType("application/json; charset=utf-8");
		JSONObject job = new JSONObject();
		try{
			
			commentService.deleteComment(com);
			job.put("message","댓글이 삭제 되었습니다. ");
		}catch(Exception e){
			e.printStackTrace();
			job.put("message","잠시 후 다시 시도해주세요.");
		}
		return job;
	}
	
	
	@RequestMapping(value="/readComment.do")
	@ResponseBody
	public JSONObject readComments(@RequestBody Comment com, HttpServletResponse response){
		response.setContentType("application/json; charset=utf-8");
		
		List<Comment> list = commentService.readComment(com);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Comment e : list){
			JSONObject job = new JSONObject();
			job.put("CMT_NO", e.getCmtNo());
			job.put("BLOG_NO", e.getBlogNo());
			job.put("MEMBER_ID", e.getMemberId());
			job.put("CMT_PARENTNO", e.getCmtParentno());
			job.put("CMT_CONTENTS", e.getCmtContents());
			job.put("STATE", e.getState());
			
			jarr.add(job);
		}
		json.put("list", jarr);
		
		return json;
		
		
	}
	
	   
}
