package org.kh.youblog.blog.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.kh.youblog.blog.model.vo.Blog;

public interface BlogService {
	
	ArrayList<Blog> categoryAllBlog(int row1, int rowno2);
	ArrayList<Blog> categoryLev2All(String cate1, int rowno1, int rowno2);
	ArrayList<Blog> categoryBlog(String cate1, String cate2, int rowno1, int rowno2);

	ArrayList<HashMap<String, String>> categoryList_Level1();
	ArrayList<HashMap<String, String>> categoryList_Level2();

	ArrayList<Blog> favoriteList();
	ArrayList<Blog> subsBlogList(String memberid);


}
