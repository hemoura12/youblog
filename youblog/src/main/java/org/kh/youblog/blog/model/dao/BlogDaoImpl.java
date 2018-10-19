/*package org.kh.youblog.blog.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kh.youblog.blog.model.vo.Blog;
import org.springframework.stereotype.Repository;

@Repository
public class BlogDaoImpl implements BlogDao{

	@Inject
	SqlSession sqlSession;

	//에디터 글쓰기
	@Override
	public int create(Blog vo) {
		return sqlSession.insert("blogMapper.insert", vo);
	}

	//대주제 출력
	@Override
	public List<Blog> selectList() {	
		return sqlSession.selectList("categoryMapper.selectList");
	}

	
	
	

}










*/