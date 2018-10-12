package org.kh.youblog.session.model.service;

import org.kh.youblog.session.model.dao.SessionDao;
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
	public int updateSession(String sessionname) {
		
		return sessionDao.updateSession(sessionname);
	}

}
