package org.kh.youblog.blog.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.kh.youblog.blog.model.dao.BlogDao;
import org.kh.youblog.blog.model.vo.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BlogService")
public class BlogServiceImpl implements BlogService{
	
	@Autowired
	private BlogDao blogDao;
	
	public ArrayList<Blog> categoryBlog(String cate1, String cate2){
		return blogDao.categoryBlog(cate1, cate2);
	}
	
	public ArrayList<HashMap<String, String>> categoryList_Level1(){
		return blogDao.categoryList_Level1();
	}
	
	public ArrayList<HashMap<String, String>> categoryList_Level2(){
		return blogDao.categoryList_Level2();
	}
	
	public ArrayList<Blog> bestBlogList(){
		return blogDao.bestBlogList();
	}
	
	public ArrayList<Blog> subsBlogList(String memberid){
		return blogDao.subsBlogList(memberid);
	}
}
