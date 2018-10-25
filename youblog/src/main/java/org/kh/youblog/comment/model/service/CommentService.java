package org.kh.youblog.comment.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.comment.model.vo.Comment;

public interface CommentService {
	/**
	 * 댓글조회
	 * @param com
	 * @return
	 */
	public List<Comment> readComment(Comment com) ;
	
	/**
	 * 댓글추가
	 * @param com
	 */
	public void insertComment(Comment com);
	
	/**
	 * 댓글수정
	 * @param com
	 */
	public int updateComment(Comment com);
	
	/**
	 * 댓글삭제
	 * @param com
	 */
	public int deleteComment(Comment com);



	ArrayList<Comment> selectList2();

}