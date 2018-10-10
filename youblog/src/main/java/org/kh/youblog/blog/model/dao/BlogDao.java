package org.kh.youblog.blog.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.blog.model.vo.Blog;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("BlogDao")
public class BlogDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public BlogDao(){}

	public List<Blog> categoryBlog() {
		List<Blog> result = sqlSession.selectList("blogMapper.selectCategoryBlog");
		return result;
	}

}
