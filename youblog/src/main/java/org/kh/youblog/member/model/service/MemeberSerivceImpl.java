package org.kh.youblog.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.member.model.dao.MemberDao;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.stereotype.Service;
@Service("memberService")

public class MemeberSerivceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public Member selectBlogMember(String writerid) {
		return memberDao.selectBlogMember(writerid);
	}

	public ArrayList<Member> subsWriterList(String memberid){
		return memberDao.subsWriterList(memberid);
	}

	@Override
	public Member selectMember(Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int joinmember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Member> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member infoMember(String memberid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member updatemember(Member member) {
		// TODO Auto-generated method stub
		return null;
	}
}