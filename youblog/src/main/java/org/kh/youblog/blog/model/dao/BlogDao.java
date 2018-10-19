package org.kh.youblog.blog.model.dao;

import java.util.List;

import org.kh.youblog.blog.model.vo.Blog;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("blogDao")
public class BlogDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
		

	public Blog selectBlog(Blog blog) {
		return null;
	}

	public Blog infoBlog(String blogno) {
		
		System.out.println("dao blogno : " + blogno);
		return (Blog)sqlSession.selectOne("blogMapper.selectBlog", blogno);
	}

	public List<Blog> selectList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public List<Blog> myBlogList() {
		return sqlSession.selectList("blogMapper.myBlogList");
	}

	
	/*public Blog myBlogUpdate(String blogno) {
		return (Blog)sqlSession.selectOne("blogMapper.myBlogUpdate", blogno);
	}*/
	
	

}
