package org.kh.youblog.like.model.dao;

import org.kh.youblog.like.model.vo.Like;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("likeDao")
public class LikeDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	//블로그 좋아요 추가
	public int insertLike(Like like){
		return sqlSession.insert("likeMapper.insertLike", like);
	}
	//블로그 좋아요 확인
	public Like checkLike(Like like){
		return sqlSession.selectOne("likeMapper.checkLike", like);
	}
	//블로그 좋아요 삭제
	public int deleteLike(Like like){
		return sqlSession.delete("likeMapper.deleteLike", like);
	}
	
	//블로그 좋아요 카운트
	public int likeCount(Like like){
		return sqlSession.selectOne("likeMapper.likeCount", like);
	}
}
