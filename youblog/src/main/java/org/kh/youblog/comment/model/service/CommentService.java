package org.kh.youblog.comment.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.comment.model.vo.Comment;

public interface CommentService {

   //ArrayList<Comment> selectList();

    void remove(List<Long> ids);
	ArrayList<Comment> selectList(String blogno);
}