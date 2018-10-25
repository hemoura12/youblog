package org.kh.youblog.blog.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.category.model.vo.Category;
import org.kh.youblog.session.model.vo.Session;

public interface BlogService {
	ArrayList<Blog> selectBlogList(String writerid);
	int updateBlog(Blog blog);
	int deleteBlog(Blog blog);
	
	// 에디터 글쓰기
		public void create(String editor, Blog vo);

		// 대주제 출력
		ArrayList<Category> selectList1();
		
		// 소주제 ajax 처리용
		public List<Category> selectList2(String sub);
		
		//회원세션 출력
		public List<Session> selectList3(String memberSession);

		// 블로그 글 출력
		ArrayList<Blog> selectList();
		
		
		public Blog selectDetailBlog(Blog blog);

	
}
