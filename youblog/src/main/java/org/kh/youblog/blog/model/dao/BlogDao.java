package org.kh.youblog.blog.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.category.model.vo.Category;
import org.kh.youblog.session.model.vo.Session;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("blogDao")
public class BlogDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//블로그 개인채널 출력
	public List<Blog> selectBlogList(String writerid) {
		return sqlSession.selectList("blogMapper.selectBlog", writerid);
	}

	//블로그 
	public int updateBlog(Blog blog) {
		
		return sqlSession.update("blogMapper.updateBlog", blog);
	}

	public int deleteBlog(Blog blog) {
		return sqlSession.delete("blogMapper.updateBlog", blog);
	}
	
	//게시글 작성
		public int create(Blog vo /*String contents*/){
			return sqlSession.insert("blogMapper.insert", vo);
		}
		
		public List<Blog> selectList() {
		      // TODO Auto-generated method stub
		      return sqlSession.selectList("blogMapper.selectBlogList");
		   }

		
		   
		
		
		//대주제 출력
		public List<Category> selectList1(){ 
			
			return sqlSession.selectList("categoryMapper.selectList");
		}

		//소주제 출력
		public List<Category> selectList2(String sub) {
			
			return sqlSession.selectList("categoryMapper.selectList1", sub);
		}

		//회원세션출력
		public List<Session> selectList3(String memberSession) {
			
			return sqlSession.selectList("sessionMapper.selectList", memberSession);
		}

		
}