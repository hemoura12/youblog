package org.kh.youblog.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.comment.model.vo.Comment;
import org.kh.youblog.member.model.dao.MemberDao;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemeberSerivceImpl implements MemberService{
	
	@Autowired
	private MemberDao memberDao;
	
	public MemeberSerivceImpl() {}

	@Override
	public void mychanelupdate(Member member) {
		System.out.println("service 넘어오나요");
		memberDao.mychanelupdate(member);
	}

	@Override
	public ArrayList<Member> selectList() {
		List<Member> list = memberDao.selectList();
	    return (ArrayList<Member>) list;
	}
	
}
