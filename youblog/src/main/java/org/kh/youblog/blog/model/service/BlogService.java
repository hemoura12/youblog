package org.kh.youblog.blog.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.blog.controller.BlogController;
import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.category.model.vo.Category;

public interface BlogService {
	
	//에디터 글쓰기
	public void create(String editor, Blog vo);

	//대주제 출력
		ArrayList<Category> selectList1();

		
		   
		   ArrayList<Blog> selectList();
		   List<Blog> getBlogList();

	/*//게시판테스트
	public void write(Blog vo) ;*/
	
	

	
	

}
