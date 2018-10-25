package org.kh.youblog.blog.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.kh.youblog.HomeController;
import org.kh.youblog.blog.model.service.BlogService;
import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.member.model.service.MemberService;
import org.kh.youblog.member.model.vo.Member;
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
@SessionAttributes("memberid")
//@SessionAttributes("blog")
public class BlogController {
	@Autowired
	private BlogService blogService;
	
	@Autowired
	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	@RequestMapping(value = "categorySelect.do")
	public ModelAndView categorySelect(
			@RequestParam(value="views") String views, 
			@RequestParam(value="cate2") String cate2, 
			ModelAndView mv){

		mv.addObject("cate2", cate2);
		mv.setViewName("category/"+views);
		
		return mv;
	}
	
	@RequestMapping(value="pagingCTG.do", method=RequestMethod.POST)
	public void pagingCTG(HttpServletResponse response, 
			@RequestParam(value="cate1") String cate1,
			@RequestParam(value="cate2") String cate2,
			@RequestParam(value="rowno1") int rowno1,
			@RequestParam(value="rowno2") int rowno2) throws IOException{
		//List 를 json 배열로 옮겨서, 전송객체에 담아서 전송 처리

		ArrayList<Blog> list;
		if(cate1.equals("all") && cate2.equals("all")){
			list =	blogService.categoryAllBlog(rowno1, rowno2);
		} else if(cate2.equals("all")){
			System.out.println("레벨2올");
			list =	blogService.categoryLev2All(cate1, rowno1, rowno2);
		} else
			list =	blogService.categoryBlog(cate1, cate2, rowno1, rowno2);
		//json 배열 객체 생성
		JSONArray jarr = new JSONArray();
		
		//list를 jarr 로 옮기기
		for(Blog blog : list){
			//추출한 user 를 json 객체에 저장하기
			JSONObject juser = new JSONObject();
			
			juser.put("blogno", blog.getBlogno());
			juser.put("rowno", blog.getRowno());
			juser.put("title", blog.getTitle());
			juser.put("writerid", blog.getWriterid());
			juser.put("memberName", blog.getMembername());
			juser.put("contents", blog.getContents());
			juser.put("writerdate", blog.getWriterdate().toString());
			juser.put("hits", blog.getHits());
			
			//json 배열에 json 객체 저장
			jarr.add(juser);
		}
		
		//전송용 최종 json 객체 선언
		JSONObject sendJson = new JSONObject();
		//jarr 을 전송 객체에 저장
		sendJson.put("list", jarr);
		
		//직접 요청자에게 내보내기
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(sendJson.toJSONString());
		out.flush();
		out.close();
	}
	
	
	@RequestMapping(value = "favoriteList.do")
	public ModelAndView favoriteList(ModelAndView mv){
		int a=19;
		int b = a/10;
		System.out.println(b);
		mv.addObject("blog", blogService.favoriteList());
		mv.setViewName("favorite/favorite");
		
		return mv;
	}
	
	@RequestMapping(value = "subscriptionList.do")
	public ModelAndView subscriptionList(HttpServletRequest request, ModelAndView mv){
		HttpSession session = request.getSession(true);
		session.setAttribute("memberid", "user01");
		//session.removeAttribute("memberid");
		String memberid = (String)session.getAttribute("memberid");
		System.out.println("memberid : " + memberid);
		//로그인 안되어 있을 시
		if(memberid==null){
			System.out.println("로그인 필요");
			mv.setViewName("subscription/subscription");
		} else {
			//ArrayList<Blog> blogList = blogService.subsBlogList(memberid);
			//LinkedHashSet<String> writerSet = new LinkedHashSet<String>();
			ArrayList<Member> subsWriterList = memberService.subsWriterList(memberid);
			/*for(Blog list : blogList){
				writerSet.add(list.getWriterid());
			}*/
			//ArrayList<String> writerList = new ArrayList<String>();
			/*for(String w : writerSet){
				writerList.add(w);
			}*/
			//저장된 아이디 리스트 넘김
			//jsp에서 배열 아이디 리스트로 확인해서 해당 내용 파라메터로 받음
			//System.out.println(writerArr);
			System.out.println(subsWriterList.toString());
			mv.addObject("subsWriterList", subsWriterList);
			//mv.addObject("blog", blogService.subsBlogList(memberid));
			mv.setViewName("subscription/subscription");
		}
		
		return mv;
	}
	
/*	@RequestMapping(value = "subsList.do")
	public ModelAndView subsBlogList(@RequestParam(value="memberid") String memberid, 
			ModelAndView mv){
		
		ArrayList<Member> subsWriterList = memberService.subsWriterList(memberid);
		
		LinkedHashSet<String> writerSet = new LinkedHashSet<String>();

		for(Blog list : subsWriterList){
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
	}*/
	

}

