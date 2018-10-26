package org.kh.youblog.like.model.service;

import org.kh.youblog.like.model.vo.Like;
import org.springframework.stereotype.Service;

public interface LikeService {
	
	//블로그 좋아요 추가
	public void insertLike(Like like);
	//블로그 좋아요 확인
	public Like checkLike(Like like);
		
	//블로그 좋아요 삭제
	public int deleteLike(Like like);
	
	//블로그 좋아요 카운트
	public int likeCount(Like like);
}
