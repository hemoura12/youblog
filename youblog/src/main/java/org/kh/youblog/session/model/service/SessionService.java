package org.kh.youblog.session.model.service;

import java.util.ArrayList;

import org.kh.youblog.session.model.vo.Session;

public interface SessionService {
	
	public int insertSession(String memberid);

	public int updateSession(ArrayList<Session> updateSessionList);

	public int deleteSession(Session session);

		
	
}
