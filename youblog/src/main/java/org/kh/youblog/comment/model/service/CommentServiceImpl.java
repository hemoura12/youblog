package org.kh.youblog.comment.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.comment.model.dao.CommentDao;
import org.kh.youblog.comment.model.vo.Comment;
import org.kh.youblog.comment.model.vo.Paging;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("commentService")
public  class CommentServiceImpl implements CommentService{

   @Autowired
   private CommentDao CommentDao;
   
   public CommentServiceImpl(){}

   //댓길 삭제
   @Override
   public void remove(List<Long> ids) {
      CommentDao.delete(ids);
   }

   //댓글 불러오기
   @Override
   public ArrayList<Comment> selectList(String blogno) {
	   List<Comment> list = CommentDao.selectList(blogno);
	   return (ArrayList<Comment>) list;
   }

}

   


