package org.kh.youblog.blog.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.HashMap;
import java.util.List;
import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.category.model.vo.Category;
import org.kh.youblog.session.model.vo.Session;


import org.kh.youblog.blog.model.vo.Blog;

public interface BlogService {
	
	ArrayList<Blog> categoryAllBlog(int row1, int rowno2);
	ArrayList<Blog> categoryLev2All(String cate1, int rowno1, int rowno2);
	ArrayList<Blog> categoryBlog(String cate1, String cate2, int rowno1, int rowno2);

	ArrayList<HashMap<String, String>> categoryList_Level1();
	ArrayList<HashMap<String, String>> categoryList_Level2();

	ArrayList<Blog> favoriteList();

	ArrayList<Blog> selectBlogList(String writerid);
	//공식블로그
	ArrayList<Blog> officialblogList(int rowno1, int rowno2);
	//파트너블로그
	ArrayList<Blog> partnerblogList(int rowno1, int rowno2);
	//좋아요 블로그
	ArrayList<Blog> likeblogList(String memberid, int rowno1, int rowno2);
	//구독자 아이디 리스트
	ArrayList<Blog> subsWriterList(String memberid);
	//구독블로그 리스트
	ArrayList<Blog> subsblogList(String writerid, int rowno1, int rowno2);
	
	int updateBlog(Blog blog);
	int deleteBlog(Blog blog);
	
	// 에디터 글쓰기
	public void create(String editor, Blog vo);

	// 대주제 출력
	ArrayList<Category> selectList1();

	// 소주제 ajax 처리용
	public List<Category> selectList2(String sub);

	// 회원세션 출력
	public List<Session> selectList3(String memberSession);

	// 블로그 글 출력
	ArrayList<Blog> selectList();

	// 블로그 게시판 출력
	ArrayList<Blog> selectBoardList(String writerid);

	
}
