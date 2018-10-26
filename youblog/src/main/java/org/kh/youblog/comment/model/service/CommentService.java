package org.kh.youblog.comment.model.service;

import java.util.ArrayList;
import java.util.List;
import org.kh.youblog.comment.model.vo.Comment;

public interface CommentService {

	//댓글 삭제
    void remove(List<Long> ids);
	//댓글 불러오기
    ArrayList<Comment> selectList(String blogno);
    
}
