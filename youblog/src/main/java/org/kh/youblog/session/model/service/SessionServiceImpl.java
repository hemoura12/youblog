package org.kh.youblog.session.model.service;

import java.util.ArrayList;

import org.kh.youblog.session.model.dao.SessionDao;
import org.kh.youblog.session.model.vo.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("sessionService")
public class SessionServiceImpl implements SessionService{
	
	@Autowired
	private SessionDao sessionDao;
	
	public SessionServiceImpl() {}

	@Override
	public int insertSession(String memberid) {
		
		return sessionDao.insertSession(memberid);
	}

	@Override
	public int updateSession(ArrayList<Session> updateSessionList) {
		
		return sessionDao.updateSession(updateSessionList);
	}
	
	@Override
	public int deleteSession(String sessionname, String memberid) {
		return sessionDao.deleteSession(sessionname, memberid);
		
	}

}
