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
		
		List<Session> check= sqlSession.selectList("sessionMapper.selectSession", memberid);
		
		if(!check.isEmpty())
			result = (int)sqlSession.insert("sessionMapper.insertSessionNotNull", memberid);
		else
			result = (int)sqlSession.insert("sessionMapper.insertSessionNull", memberid);
				
		
		return result;
	}

	public int updateSession(ArrayList<Session> updateSessionList) {
		int result = 0;
		
		for(int i = 0 ; i < updateSessionList.size(); i++){
			Session s = new Session();
			s = updateSessionList.get(i);
			
			result += (int)sqlSession.update("sessionMapper.updateSession",s.getSessionname());
		}
		return result;
	}

	public int deleteSession(String sessionname, String memberid) {
		// TODO Auto-generated method stub
		return (int)sqlSession.delete("sessionMapper.deleteSession", sessionname);
	}
	
	

}
