package org.kh.youblog.member.model.service;

import java.util.ArrayList;

import org.kh.youblog.member.model.vo.Member;

public interface MemberService {

	ArrayList<Member> selectList();
	
	
	Member selectBlogMember(String writerid);

}
