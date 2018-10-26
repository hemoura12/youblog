package org.kh.youblog.like.controller;

import org.json.simple.JSONObject;
import org.kh.youblog.like.model.service.LikeService;
import org.kh.youblog.like.model.vo.Like;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LikeController {

	@Autowired
	private LikeService likeService;
	
	//블로그 좋아요 추가
	@RequestMapping(value="/insertLike.do")
	@ResponseBody
	public JSONObject insertLike(@RequestBody Like like){
		
		JSONObject job = new JSONObject();
		try{
			likeService.insertLike(like);
			job.put("message","좋아요가 등록 되었습니다. ");
		}catch(Exception e){
			e.printStackTrace();
			job.put("message","이미 좋아요를 눌렀습니다.");
		}
		return job;
	}
	//블로그 좋아요 확인
	@RequestMapping(value="/checkLike.do")
	@ResponseBody
	public JSONObject checkLike(@RequestBody Like like){
		
		JSONObject job = new JSONObject();
		try{
			System.out.println(like.toString());
			likeService.checkLike(like);
			
			job.put("message", "좋아요했었습니다.");
			
		}catch(Exception e){
			e.printStackTrace();
			job.put("message", "좋아요누를수있습니다.");
			
		}
		return job;
	}
		
	//블로그 좋아요 삭제
	@RequestMapping(value="/deleteLike.do")
	@ResponseBody
	public JSONObject deleteLike(@RequestBody Like like){
		
		JSONObject job = new JSONObject();
		try{
			likeService.deleteLike(like);
			job.put("message","좋아요가 삭제 되었습니다. ");
		}catch(Exception e){
			e.printStackTrace();
			job.put("message","좋아요 누른적이 없습니다. 좋아요 먼저 눌러주세요.");
		}
		return job;
	}
	
	@RequestMapping(value="/likeCount.do")
	@ResponseBody
	public JSONObject likeCount(@RequestBody Like like){
		JSONObject job = new JSONObject();
		try{
			
			int a = likeService.likeCount(like);
			job.put("count", a);
			System.out.println(job);
		}catch(Exception e){
			e.printStackTrace();
			job.put("count", 0);
			
		}
		return job;
	}
}
