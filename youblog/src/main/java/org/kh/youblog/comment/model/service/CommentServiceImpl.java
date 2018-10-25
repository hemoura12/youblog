package org.kh.youblog.comment.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.comment.model.dao.CommentDao;
import org.kh.youblog.comment.model.vo.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentDao commentDao;
	
	
	@Override
	public void insertComment(Comment com) {
		
		commentDao.insertComment(com);
	}


	@Override
	public List<Comment> readComment(Comment com) {
		return commentDao.readComment(com);
	}


	@Override
	public int updateComment(Comment com) {
		
		return commentDao.updateComment(com);
	}


	@Override
	public int deleteComment(Comment com) {
		
		return commentDao.deleteComment(com);
	}

	@Override
	public ArrayList<Comment> selectList2() {
		List<Comment> list = commentDao.selectList2();
		return (ArrayList<Comment>) list;
	}
	
	
	
	
	
}

