<<<<<<< HEAD
package org.kh.youblog.blog.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.blog.model.dao.BlogDao;
import org.kh.youblog.blog.model.vo.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("blogService")
public class BlogServiceImpl implements BlogService {
	
	@Autowired
	BlogDao blogDao;
	
	public BlogServiceImpl(){}

	@Override
	public ArrayList<Blog> selectBlogList(String writerid) {
		return (ArrayList<Blog>) blogDao.selectBlogList(writerid);
	}

	@Override
	public int updateBlog(Blog blog) {
		return blogDao.updateBlog(blog);
	}

	@Override
	public int deleteBlog(Blog blog) {
		return blogDao.deleteBlog(blog);
	}
	
	// 에디터 글쓰기
		@Override
		public void create(String contents, Blog vo) {
			String title = vo.getTitle();
			String contents1 = vo.getContents();
			String writerid = vo.getWriterid();
			String subject = vo.getCatename1();
			String subject2 = vo.getCatename2();

			vo.setTitle(title);
			vo.setContents(contents1);
			vo.setWriterid(writerid);
			vo.setCatename1(subject);
			vo.setCatename2(subject2);

			BlogDao.create(vo);

		}

		// 대주제 출력
		@Override
		public ArrayList<Category> selectList1() {
			List<Category> list = BlogDao.selectList1();

			return (ArrayList<Category>) list;

		}

		// 소주제 ajax 출력
		@Override
		public List<Category> selectList2(String sub) {
			return BlogDao.selectList2(sub);
		}

		// 회원세션출력
		@Override
		public List<Session> selectList3(String memberSession) {
			return BlogDao.selectList3(memberSession);
		}

		// 블로그 글 출력
		@Override
		public ArrayList<Blog> selectList() {
			List<Blog> list = BlogDao.selectList();
			return (ArrayList<Blog>) list;
		}

		// 블로그 글 출력
		@Override
		public List<Blog> getBlogList() {
			return BlogDao.getList();
		}

}
