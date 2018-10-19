package org.kh.youblog.comment.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.comment.model.dao.CommentDao;
import org.kh.youblog.comment.model.vo.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("CommentService")
public class CommentServiceImpl implements CommentService{

	@Autowired
	private CommentDao CommentDao;
	
	public CommentServiceImpl(){}

	@Override
	public ArrayList<Comment> selectList() {
		List<Comment> list = CommentDao.selectList();
		return (ArrayList<Comment>) list;
	}
	
	
	
	
	
}
