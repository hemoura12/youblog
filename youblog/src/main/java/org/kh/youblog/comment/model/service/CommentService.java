package org.kh.youblog.comment.model.service;

import java.util.ArrayList;

import org.kh.youblog.comment.model.vo.Comment;

public interface CommentService {

   ArrayList<Comment> selectList();

}