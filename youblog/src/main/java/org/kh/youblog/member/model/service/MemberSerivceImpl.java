package org.kh.youblog.member.model.service;

import java.util.List;

import org.kh.youblog.member.model.dao.MemberDao;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")

public class MemberSerivceImpl implements MemberService{
	
	public MemberSerivceImpl(){}

	@Autowired
	private MemberDao memberDao;
	
	
	@Override
	public Member selectBlogMember(String writerid) {		
		return memberDao.selectBlogMember(writerid);
	}
	
	@Override
	public Member selectMember(Member member) {
		return memberDao.selectMember(member);
	}
	
	@Override
	public int joinmember(Member member) {
		return memberDao.joinmember(member);
	}
	
	@Override
	public List<Member> selectList() {
		System.out.println("서비스 요청완료");
		return memberDao.selectList();
	}
	
	@Override
	public Member infoMember(String memberid){
		return memberDao.infoMember(memberid);
	}
	
	@Override
	public int updatemember(Member member){
		return memberDao.updateMember(member);
	}
	
	@Override
	public int updateprofile(Member member){
		return memberDao.updateprofile(member);
	}
	
	


}
