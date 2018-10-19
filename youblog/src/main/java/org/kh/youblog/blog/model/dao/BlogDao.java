package org.kh.youblog.blog.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.blog.controller.BlogController;
import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.category.model.vo.Category;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("BlogDao")
public class BlogDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;


	
	//게시글 작성
	public int create(Blog vo /*String contents*/){
		return sqlSession.insert("blogMapper.insert", vo);
	}
	
	public List<Blog> selectList() {
	      // TODO Auto-generated method stub
	      return sqlSession.selectList("blogMapper.selectBlogList");
	   }

	   public List<Blog> getList() {
	      return sqlSession.selectList("blogMapper.selectBlogList");
	   }
	   
	
	
	//대주제 출력
	public List<Category> selectList1(){ 
		return sqlSession.selectList("categoryMapper.selectList");
	}
	

	
	/*//게시글 출력
		public List<Blog> selectList() {
			
			return sqlSession.selectList("blogMapper.selectList");
		}
	
	//게시글 테스트
	public int write(Blog vo); */
		 
		
	
	
	
	
	
}
