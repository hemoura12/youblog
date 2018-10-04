package org.kh.youblog.blog.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.blog.model.dao.BlogDao;
import org.kh.youblog.blog.model.vo.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("blogService")
public class BlogServiceImpl implements BlogService {
	
	@Autowired
	BlogDao blogDao;
	
	public BlogServiceImpl(){}

	@Override
	public Blog selectBlog(Blog blog) {
		return blogDao.selectBlog(blog);
	}

	@Override
	public Blog infoBlog(String blogno) {
		return blogDao.infoBlog(blogno);
	}

	@Override
	public ArrayList<Blog> selectList() {
		List<Blog> list = blogDao.selectList();
		return (ArrayList<Blog>)list;
	}

}
