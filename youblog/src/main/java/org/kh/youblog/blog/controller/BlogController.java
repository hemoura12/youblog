package org.kh.youblog.blog.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.kh.youblog.blog.model.service.BlogService;
import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.category.model.vo.Category;
import org.kh.youblog.member.model.service.MemberService;
import org.kh.youblog.member.model.vo.Member;
import org.kh.youblog.session.model.vo.Session;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes({"blog", "member"})
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
			juser.put("writerdate", blog.getWritedate().toString());
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
		
		//로그인 안되어 있을 시
		if(memberid==null){
			System.out.println("로그인 필요");
			mv.setViewName("subscription/subscription");
		} else {
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
			mv.setViewName("subscription/subscription");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "subsList.do")
	public ModelAndView subsBlogList(@RequestParam(value="memberid") String memberid, 
			ModelAndView mv){
		
		ArrayList<Member> subsWriterList = memberService.subsWriterList(memberid);
		
		LinkedHashSet<String> writerSet = new LinkedHashSet<String>();

/*		for(Blog list : subsWriterList){
			writerSet.add(list.getWriterid());
		}*/
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

	
	//블로그 리스트 출력
	@RequestMapping(value="personmain.do", method=RequestMethod.GET) //개인 블로그 리스트 호출
	public ModelAndView selectBlogList(ModelAndView mv, @RequestParam(value="writerid") String writerid){
		
		
		
		System.out.println(writerid);
		
		ArrayList<Blog> blog = blogService.selectBlogList(writerid);
		Member member = memberService.selectBlogMember(writerid);
		
		
		mv.addObject("blog", blog);//Blog객체 리턴받음
		mv.addObject("member", member);

		mv.setViewName("personblog/personmain");
		
		return mv;
	}
	
	
	//글관리 수정
	@RequestMapping(value="blogpudate.do", method=RequestMethod.GET)
	public ModelAndView updateBlogList(ModelAndView mv, @RequestParam(value="memberid") String memberid,
																				@RequestParam(value="blogid") String blogid){
		
		memberid = "user01";
		blogid = "1";
		
		Blog blog = new Blog();
		blog.setBlogno(blogid);
		blog.setWriterid(memberid);
		
		mv.addObject("blog", blogService.updateBlog(blog));
		
		return mv;
	}
	
	//글관리 삭제
	public ModelAndView deleteBlogList(ModelAndView mv, @RequestParam(value="memberid") String memberid,
																				@RequestParam(value="blogid") String blogid){
		
		memberid = "user01";
		blogid = "1";

		Blog blog = new Blog();
		blog.setBlogno(blogid);
		blog.setWriterid(memberid);

		mv.addObject("blog", blogService.deleteBlog(blog));

		return mv;
	}
	
	/*@RequestMapping(value = "blogread.do")
    public ModelAndView reading(ModelAndView mv){
      mv.addObject("resultList", blogService.getBlogList());
       mv.setViewName("blogread");
      return mv;
   }*/

	// view 페이지이동 대주제 출력
	@RequestMapping(value = "/coding.do")
	public ModelAndView list(ModelAndView mv) {

		ArrayList<Category> list = blogService.selectList1();
		mv.addObject("list", list);
		mv.setViewName("view");
		
		return mv;
	}


	// 에디터 글쓰기
	@RequestMapping(value = "/insertBoard.do", method = RequestMethod.POST)
	public String insertBoard(String contents, Blog vo) {
		blogService.create(contents, vo);
		
		return "redirect:/coding.do";

	}
	
	//소주제 불러오기
	@RequestMapping(value="subject.do", method = RequestMethod.POST)
	public void read(HttpServletResponse response,@RequestParam(value="sub") String sub) throws IOException{
		Category category = new Category();
		List<Category> list = blogService.selectList2(sub);
		JSONObject json = new JSONObject();
		
		//System.out.println("List 오는지: " + list);
		//System.out.println("sub 나오는지" + sub);
		
		JSONArray jarr = new JSONArray();
	
		
		for(Category c : list){
			JSONObject job = new JSONObject();
			job.put("cate2", c.getCate_name2());
			
			jarr.add(job);
		}
		
		
		JSONObject sendJson = new JSONObject();
		sendJson.put("list", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(sendJson.toJSONString());
		out.flush();
		out.close();

	}
	
	//회원세션불러오기
	@RequestMapping(value="memberSession.do", method = RequestMethod.POST)
	public void session(HttpServletResponse response,@RequestParam(value="memberSession") String memberSession) throws IOException{
		Session sess = new Session();
		List<Session> list = blogService.selectList3(memberSession);
		JSONObject json = new JSONObject();
		
		System.out.println("List 오는지: " + list);
		System.out.println("memberSession 나오는지" + memberSession);
		
		JSONArray jarr = new JSONArray();
	
		
		for(Session s : list){
			JSONObject job = new JSONObject();
			job.put("cate3", s.getSessionname());
			
			jarr.add(job);
		}
		
		
		JSONObject sendJson = new JSONObject();
		sendJson.put("list", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(sendJson.toJSONString());
		out.flush();
		out.close();

	}

	

	// 다중파일업로드
	@RequestMapping(value = "/file_uploader_html5.do", method = RequestMethod.POST)
	@ResponseBody
	public String multiplePhotoUpload(HttpServletRequest request) {
		// 파일정보
		StringBuffer sb = new StringBuffer();
		try {
			// 파일명을 받는다 - 일반 원본파일명
			String oldName = request.getHeader("file-name");
			// 파일 기본경로 _ 상세경로
			String filePath = "C:/git/final/youblog/youblog/src/main/webapp/resources/photoUpload/";

			String saveName = sb.append(new SimpleDateFormat("yyyyMMddHHmmss").format(System.currentTimeMillis()))
					.append(UUID.randomUUID().toString()).append(oldName.substring(oldName.lastIndexOf(".")))
					.toString();
			InputStream is = request.getInputStream();
			OutputStream os = new FileOutputStream(filePath + saveName);
			int numRead;
			byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
			while ((numRead = is.read(b, 0, b.length)) != -1) {
				os.write(b, 0, numRead);
			}
			os.flush();
			os.close();
			// 정보 출력
			sb = new StringBuffer();
			sb.append("&bNewLine=true").append("&sFileName=").append(oldName).append("&sFileURL=")
					.append("http://localhost:8888/youblog/resources/photoUpload/").append(saveName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sb.toString();
	}
	
	@RequestMapping(value="personboard.do", method=RequestMethod.GET) //개인 블로그 리스트 호출
	public ModelAndView selectBoardList(ModelAndView mv, @RequestParam(value="writerid") String writerid){
		
		writerid = "user01";
		ArrayList<Blog> blog = blogService.selectBoardList(writerid);
		
		
		mv.addObject("blog", blog);//Blog객체 리턴받음

		mv.setViewName("personblog/personboard");
		
		return mv;
	}
	
}