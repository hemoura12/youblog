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
	public ArrayList<Blog> selectBlogList(String writerid) {
		return (ArrayList<Blog>) blogDao.selectBlogList(writerid);
	}

	@Override
	public int updateBlog(Blog blog) {
		return blogDao.updateBlog(blog);
	}

	@Override
	public int deleteBlog(Blog blog) {
		return blogDao.deleteBlog(blog);
	}

}
