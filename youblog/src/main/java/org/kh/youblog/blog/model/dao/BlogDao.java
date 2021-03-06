package org.kh.youblog.blog.model.dao;

import java.util.ArrayList;

import java.util.List;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

import org.kh.youblog.blog.model.vo.Blog;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
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

		public List<Blog> selectBoardList(String writerid) {
			return sqlSession.selectList("blogMapper.selectBoardList", writerid);
		}
		
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

		public int updateBoard(Blog blog) {
			return sqlSession.update("blogMapper.updateBlog", blog);
		}

		public Blog infoBlog(String blogno) {
			
			System.out.println("dao blogno : " + blogno);
			return (Blog)sqlSession.selectOne("blogMapper.selectBlog", blogno);
		}
		
		//블로그 불러오기
		public List<Blog> myBlogList() {
			return sqlSession.selectList("blogMapper.myBlogList");
		}
		
		//게시글 삭제
		public void delete(List<Long> ids) {
		      ids.forEach(new Consumer<Long>() {
		         @Override
		         public void accept(Long id) {
		            sqlSession.delete("blogMapper.delete", id);
		         }
		      });

		   }

		public int changestate(Blog blog) {
			
			return sqlSession.update("blogMapper.updateBlog", blog);
		}

		public void remove(List<Long> ids) {
			
			ids.forEach(new Consumer<Long>() {
		         @Override
		         public void accept(Long id) {
		        	sqlSession.delete("blogMapper.delete", id);
		         }
		      });
		}
		
}