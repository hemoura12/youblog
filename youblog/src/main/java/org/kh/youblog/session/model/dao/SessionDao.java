package org.kh.youblog.session.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.session.model.vo.Session;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("sessionDao")
public class SessionDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private Session ss;
	
	public SessionDao(){}
	
	public int insertSession(String memberid) {
		int result = 0;
		
		List<Session> check= sqlSession.selectList("session-mapper.selectSession", memberid);
		
		if(!check.isEmpty())
			result = (int)sqlSession.insert("session-mapper.insertSessionNotNull", memberid);
		else
			result = (int)sqlSession.insert("session-mapper.insertSessionNull", memberid);
				
		
		return result;
	}

}
