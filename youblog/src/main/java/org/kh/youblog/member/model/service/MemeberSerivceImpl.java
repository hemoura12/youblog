package org.kh.youblog.member.model.service;

import org.kh.youblog.member.model.dao.MemberDao;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")

public class MemeberSerivceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public Member selectBlogMember(String writerid) {
		
		return memberDao.selectBlogMember(writerid);
	}

}
