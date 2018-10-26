package org.kh.youblog.search.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kh.youblog.blog.model.vo.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("sDao")
public class SearchDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<Blog> searchList(String keyword){
		return (List)sqlSession.selectList("blogMapper.searchList", keyword);
		
	}

}
