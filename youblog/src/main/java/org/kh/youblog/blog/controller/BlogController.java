package org.kh.youblog.blog.controller;

import java.util.ArrayList;

import org.kh.youblog.blog.model.service.BlogService;
import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.member.model.service.MemberService;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes({"blog", "member"})

public class BlogController {

	@Autowired
	private BlogService blogSerivce;
	
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value="personmain.do", method=RequestMethod.GET) //개인 블로그 리스트 호출
	public ModelAndView selectBlogList(ModelAndView mv, @RequestParam(value="writerid") String writerid){
		
		writerid = "user01";
		
		ArrayList<Blog> blog = blogSerivce.selectBlogList(writerid);
		Member member = memberService.selectBlogMember(writerid);
		
		
		mv.addObject("blog", blog);//Blog객체 리턴받음
		mv.addObject("member", member);

		mv.setViewName("personblog/personmain");
		
		return mv;
	}
	
	@RequestMapping(value="blogpudate.do", method=RequestMethod.GET)
	public ModelAndView updateBlogList(ModelAndView mv, @RequestParam(value="memberid") String memberid,
																				@RequestParam(value="blogid") String blogid){
		
		memberid = "user01";
		blogid = "1";
		
		Blog blog = new Blog();
		blog.setBlogno(blogid);
		blog.setWriterid(memberid);
		
		mv.addObject("blog", blogSerivce.updateBlog(blog));
		
		return mv;
	}
	
	public ModelAndView deleteBlogList(ModelAndView mv, @RequestParam(value="memberid") String memberid,
																				@RequestParam(value="blogid") String blogid){
		
		memberid = "user01";
		blogid = "1";

		Blog blog = new Blog();
		blog.setBlogno(blogid);
		blog.setWriterid(memberid);

		mv.addObject("blog", blogSerivce.deleteBlog(blog));

		return mv;
	}
	
	@RequestMapping(value = "blogread.do")
    public ModelAndView reading(ModelAndView mv){
      mv.addObject("resultList", blogService.getBlogList());
       mv.setViewName("blogread");
      return mv;
   }

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
	
	
}
