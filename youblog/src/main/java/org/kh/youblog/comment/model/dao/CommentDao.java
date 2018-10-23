package org.kh.youblog.comment.model.dao;

import java.util.List;

import org.kh.youblog.comment.model.vo.Comment;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author LG
 *
 */
@Repository("commentDao")
public class CommentDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	/**
	 * 댓글 추가
	 * @param com
	 * @return
	 */
	public int insertComment(Comment com){
		return sqlSession.insert("commentMapper.insertComment", com);
	}
	
	/**
	 * 댓글 수정
	 * @param com
	 * @return
	 */
	public int updateComment(Comment com){
		return sqlSession.insert("commentMapper.updateComment", com);
	}
	
	/**
	 * 댓글 삭제
	 * @param com
	 * @return
	 */
	public int deleteComment(Comment com){
		return sqlSession.insert("commentMapper.deleteComment", com);
	}

	/**
	 * 댓글 조회
	 * @param com
	 * @return
	 */
	public List<Comment> readComment(Comment com) {
		return sqlSession.selectList("commentMapper.readComment", com);
	}

}
