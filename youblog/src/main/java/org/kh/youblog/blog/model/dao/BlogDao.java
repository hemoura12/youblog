package org.kh.youblog.blog.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.kh.youblog.blog.model.vo.Blog;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("BlogDao")
public class BlogDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public BlogDao(){}

	public ArrayList<Blog> categoryAllBlog(int row1, int row2) {
		Map map = new HashMap();
		map.put("row1", row1);
		map.put("row2", row2);
		List<Blog> result = sqlSession.selectList("blogMapper.allCategory", map);
		return (ArrayList<Blog>)result;
	}
	
	public ArrayList<Blog> categoryLev2All(String cate1, int row1, int row2) {
		Map map = new HashMap();
		map.put("cate1", cate1);
		map.put("row1", row1);
		map.put("row2", row2);
		List<Blog> result = sqlSession.selectList("blogMapper.selectCTGLev2All", map);
		return (ArrayList<Blog>)result;
	}
	
	public ArrayList<Blog> categoryBlog(String cate1, String cate2, int row1, int row2) {
		Map map = new HashMap();
		map.put("cate1", cate1);
		map.put("cate2", cate2);
		map.put("row1", row1);
		map.put("row2", row2);
		List<Blog> result = sqlSession.selectList("blogMapper.selectCTG", map);
		return (ArrayList<Blog>)result;
	}
	
	public ArrayList<HashMap<String, String>> categoryList_Level1() {
		List<HashMap<String, String>> result = sqlSession.selectList("blogMapper.categoryListLev1");
		return (ArrayList<HashMap<String, String>>)result;
	}

	public ArrayList<HashMap<String, String>> categoryList_Level2() {
		List<HashMap<String, String>> result = sqlSession.selectList("blogMapper.categoryList");
		return (ArrayList<HashMap<String, String>>)result;
	}

	public ArrayList<Blog> favoriteList() {
		List<Blog> result = sqlSession.selectList("blogMapper.favoriteList");
		return (ArrayList<Blog>)result;
	}

	public ArrayList<Blog> subsBlogList(String memberid) {
		List<Blog> result = sqlSession.selectList("blogMapper.subsBlogList", memberid);
		return (ArrayList<Blog>)result;
	}


}
