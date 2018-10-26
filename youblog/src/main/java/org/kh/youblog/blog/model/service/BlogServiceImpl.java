package org.kh.youblog.blog.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.HashMap;
import org.kh.youblog.blog.model.dao.BlogDao;
import org.kh.youblog.blog.model.vo.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.kh.youblog.blog.model.dao.BlogDao;
import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.category.model.vo.Category;
import org.kh.youblog.session.model.vo.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("BlogService")
public class BlogServiceImpl implements BlogService{
	
	@Autowired
	private BlogDao blogDao;
	
	public BlogServiceImpl(){}
	
	public ArrayList<Blog> categoryAllBlog(int row1, int row2){
		return blogDao.categoryAllBlog(row1, row2);
	}
	
	public ArrayList<Blog> categoryLev2All(String cate1, int row1, int row2) {
		return blogDao.categoryLev2All(cate1, row1, row2);
	}
	
	public ArrayList<Blog> categoryBlog(String cate1, String cate2, int rowno1, int rowno2){
		return blogDao.categoryBlog(cate1, cate2, rowno1, rowno2);
	}
	
	public ArrayList<Blog> favoriteList(){
		return blogDao.favoriteList();
	}
	
	public ArrayList<HashMap<String, String>> categoryList_Level1(){
		return blogDao.categoryList_Level1();
	}
	
	public ArrayList<HashMap<String, String>> categoryList_Level2(){
		return blogDao.categoryList_Level2();
	}
	

	
	public ArrayList<Blog> subsBlogList(String memberid){
		return blogDao.subsBlogList(memberid);
	}
	
	

	@Override
	public ArrayList<Blog> selectBlogList(String writerid) {
		return (ArrayList<Blog>)blogDao.selectBlogList(writerid);
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
    public void create(String contents, Blog vo ) {
       String title = vo.getTitle();
       String contents1 = vo.getContents();
       String writerid = vo.getWriterid();
       String subject = vo.getCatename1();
       String subject2 = vo.getCatename2();
       String state = vo.getState();
       String thumbnail = vo.getThumbnail();
       
       

       vo.setTitle(title);
       vo.setContents(contents1);
       vo.setWriterid(writerid);
       vo.setCatename1(subject);
       vo.setCatename2(subject2);
       vo.setState(state);
       vo.setThumbnail(thumbnail);
       

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

		@Override

		public Blog selectDetailBlog(Blog blog) {
			
			return blogDao.selectDetailBlog(blog);
		}
		public ArrayList<Blog> selectBoardList(String writerid) {
			return (ArrayList<Blog>)blogDao.selectBoardList(writerid);

		}

		//게시글수정
	      @Override
	      public void update(Blog vo) {
	         blogDao.update(vo);

	      }

}
