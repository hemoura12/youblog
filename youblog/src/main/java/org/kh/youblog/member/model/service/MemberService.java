package org.kh.youblog.member.model.service;

import java.util.ArrayList;

import org.kh.youblog.member.model.vo.Member;

public interface MemberService {

	void mychanelupdate(Member member);

	ArrayList<Member> selectList();

	//int mychanelupdate(String check);

	

	

	
}
