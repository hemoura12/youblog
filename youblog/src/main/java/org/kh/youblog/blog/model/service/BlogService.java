package org.kh.youblog.blog.model.service;

import java.util.ArrayList;

import org.kh.youblog.blog.model.vo.Blog;

public interface BlogService {
	ArrayList<Blog> selectBlogList(String writerid);
	int updateBlog(Blog blog);
	int deleteBlog(Blog blog);
	
}
