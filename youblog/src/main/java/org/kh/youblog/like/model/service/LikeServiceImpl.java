package org.kh.youblog.like.model.service;

import org.kh.youblog.like.model.dao.LikeDao;
import org.kh.youblog.like.model.vo.Like;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("likeService")
public class LikeServiceImpl  implements LikeService {

	public LikeServiceImpl(){}
	
	@Autowired
	private LikeDao likeDao;
	
	//블로그 좋아요 추가
	public void insertLike(Like like){
		likeDao.insertLike(like);
	}
	//블로그 좋아요 확인
	public Like checkLike(Like like){
		return likeDao.checkLike(like);
	}
	//블로그 좋아요 삭제
	public int deleteLike(Like like){
		return likeDao.deleteLike(like);
	}
	//블로그 좋아요 카운트
	public int likeCount(Like like){
		return likeDao.likeCount(like);
	}
	
}
