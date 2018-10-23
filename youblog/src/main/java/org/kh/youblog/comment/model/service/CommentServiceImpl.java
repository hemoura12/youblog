package org.kh.youblog.comment.model.service;

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
		com.setMemberId("user01");
		commentDao.insertComment(com);
	}


	@Override
	public List<Comment> readComment(Comment com) {
		return commentDao.readComment(com);
	}


	@Override
	public void updateComment(Comment com) {
		com.setMemberId("user01");
		commentDao.updateComment(com);
	}


	@Override
	public void deleteComment(Comment com) {
		com.setMemberId("user01");
		commentDao.deleteComment(com);
	}
}
	