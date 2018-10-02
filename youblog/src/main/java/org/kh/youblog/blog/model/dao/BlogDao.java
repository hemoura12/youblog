package org.kh.youblog.blog.model.dao;

import java.util.List;

import org.kh.youblog.blog.model.vo.Blog;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class BlogDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
		

	public Blog selectBlog(Blog blog) {
		return null;
	}

	public Blog infoBlog(String blogno) {
		return sqlSession.selectOne("blogMapper.selectBlog", blogno);
	}

	public List<Blog> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

}
