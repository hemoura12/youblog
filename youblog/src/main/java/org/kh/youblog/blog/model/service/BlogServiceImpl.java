package org.kh.youblog.blog.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.blog.model.dao.BlogDao;
import org.kh.youblog.blog.model.vo.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BlogService")
public class BlogServiceImpl implements BlogService{
	
	@Autowired
	private BlogDao blogDao;
	
	public List<Blog> categoryBlog(){
		return blogDao.categoryBlog();
	}
	
}
