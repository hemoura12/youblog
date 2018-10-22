package org.kh.youblog.blog.model.service;

import java.util.ArrayList;

import org.kh.youblog.blog.model.vo.Blog;

public interface BlogService {
	
	Blog selectBlog(Blog blog);
	ArrayList<Blog> selectBlogList(String writerid);
	
	ArrayList<Blog> selectList();
	
}
