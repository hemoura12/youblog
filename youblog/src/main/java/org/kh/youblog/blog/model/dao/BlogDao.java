package org.kh.youblog.blog.model.dao;

import java.util.List;

import org.kh.youblog.blog.model.vo.Blog;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("blogDao")
public class BlogDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
		

	public Blog selectBlog(Blog blog) {
		return null;
	}

	public List<Blog> selectBlogList(String writerid) {
		
		System.out.println("Blog dao writerid : " + writerid);
		return sqlSession.selectList("blogMapper.selectBlog", writerid);
	}

	public List<Blog> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

}
