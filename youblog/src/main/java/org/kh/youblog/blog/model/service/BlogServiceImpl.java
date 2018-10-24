package org.kh.youblog.blog.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.blog.controller.BlogController;
import org.kh.youblog.blog.model.dao.BlogDao;
import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.category.model.vo.Category;
import org.kh.youblog.session.model.vo.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BlogService")
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogDao blogDao;

	public BlogServiceImpl() {
	}

	// 에디터 글쓰기
	@Override
	public void create(String contents, Blog vo) {
		String title = vo.getTitle();
		String contents1 = vo.getContents();
		String writerid = vo.getWriterid();
		String subject = vo.getCatename1();
		String subject2 = vo.getCatename2();
		String state = vo.getState();

		vo.setTitle(title);
		vo.setContents(contents1);
		vo.setWriterid(writerid);
		vo.setCatename1(subject);
		vo.setCatename2(subject2);
		vo.setState(state);

		blogDao.create(vo);

	}

	// 대주제 출력
	@Override
	public ArrayList<Category> selectList1() {
		List<Category> list = blogDao.selectList1();

		return (ArrayList<Category>) list;

	}

	// 소주제 ajax 출력
	@Override
	public List<Category> selectList2(String sub) {
		return blogDao.selectList2(sub);
	}

	// 회원세션출력
	@Override
	public List<Session> selectList3(String memberSession) {
		return blogDao.selectList3(memberSession);
	}

	// 블로그 글 출력
	@Override
	public ArrayList<Blog> selectList() {
		List<Blog> list = blogDao.selectList();
		return (ArrayList<Blog>) list;
	}

	// 블로그 글 출력
	@Override
	public List<Blog> getBlogList() {
		return blogDao.getList();
	}

	


	/*
	 //게시판 출력
	 @Override
	public ArrayList<Blog> selectList() {
		List<Blog> list = BlogDao.selectList();
		return (ArrayList<Blog>) list;
	} 
	  
	 //게시판테스트
	@Override
	public void write(Blog vo)  {
		String title = vo.getTitle();
		String contents = vo.getContents();
		String writerid = vo.getWriterid();
		String catename1 = vo.getCatename1();
		String catename2 = vo.getCatename2();
		
		vo.setTitle(title);
		vo.setContents(contents);
		vo.setWriterid(writerid);
		vo.setCatename1(catename1);
		vo.setCatename2(catename2);
		
		
		System.out.println("제목" + title);
		System.out.println("내용" + contents);
		System.out.println("작성자" + writerid);
		System.out.println("카테1" + catename1);
		System.out.println("카테2" + catename2);
		System.out.println(vo);
		BlogDao.write(vo);
	}*/





	

}











