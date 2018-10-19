package org.kh.youblog.member.model.service;

import org.kh.youblog.member.model.dao.MemberDao;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemeberSerivceImpl implements MemberService{
	
	@Autowired
	private MemberDao memberDao;
	
	public MemeberSerivceImpl() {}

	/*@Override
	public Member mychanelupdate(Member member) {
		System.out.println("service 넘어오나요");
		return memberDao.mychanelupdate(member);
	}*/

	@Override
	public int mychanelupdate(String check) {
		System.out.println("service 넘어와요");
		return memberDao.mychanelupdate(check);
	}

	

	

}
