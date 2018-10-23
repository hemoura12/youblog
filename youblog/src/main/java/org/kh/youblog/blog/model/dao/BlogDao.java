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
		

	public List<Blog> selectBlogList(String writerid) {
		
		return sqlSession.selectList("blogMapper.selectBlog", writerid);
	}

	public int updateBlog(Blog blog) {
		
		return sqlSession.update("blogMapper.updateBlog", blog);
	}

	public int deleteBlog(Blog blog) {
		return sqlSession.delete("blogMapper.updateBlog", blog);
	}

}
