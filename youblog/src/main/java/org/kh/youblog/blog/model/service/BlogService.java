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
	ArrayList<Blog> subsBlogList(String memberid);
	ArrayList<Blog> selectBlogList(String writerid);
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
	
	// 게시글 공개여부 수정
	int updateBoard(Blog blog);

	
}
