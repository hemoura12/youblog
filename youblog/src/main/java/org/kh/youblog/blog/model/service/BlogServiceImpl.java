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
	
	public ArrayList<Blog> categoryAllBlog(int row1, int row2){
		return blogDao.categoryAllBlog(row1, row2);
	}
	
	public ArrayList<Blog> categoryLev2All(String cate1, int row1, int row2) {
		return blogDao.categoryLev2All(cate1, row1, row2);
	}
	
	public ArrayList<Blog> categoryBlog(String cate1, String cate2, int rowno1, int rowno2){
		return blogDao.categoryBlog(cate1, cate2, rowno1, rowno2);
	}
	
	public ArrayList<Blog> favoriteList(){
		return blogDao.favoriteList();
	}
	
	public ArrayList<HashMap<String, String>> categoryList_Level1(){
		return blogDao.categoryList_Level1();
	}
	
	public ArrayList<HashMap<String, String>> categoryList_Level2(){
		return blogDao.categoryList_Level2();
	}
	

	
	public ArrayList<Blog> subsBlogList(String memberid){
		return blogDao.subsBlogList(memberid);
	}


}
