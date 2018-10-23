package org.kh.youblog.blog.model.service;

import java.util.ArrayList;

import org.kh.youblog.blog.model.vo.Blog;

public interface BlogService {
	
	Blog selectBlog(Blog blog);
	Blog infoBlog(String blogno);
	
	ArrayList<Blog> selectList();
	
	/*Blog myBlogUpdate(String blogno);*/
	
	//블로그 불러오기
	ArrayList<Blog> myBlogList();
	
}
