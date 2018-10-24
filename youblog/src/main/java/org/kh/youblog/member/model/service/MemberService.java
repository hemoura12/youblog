package org.kh.youblog.member.model.service;

import java.util.List;

import org.kh.youblog.member.model.vo.Member;

public interface MemberService {
	
	Member selectBlogMember(String writerid);
	
	Member selectMember(Member member);
	
	Member joinmember(Member member);

	List<Member> selectList();

	Member infoMember(String userid);

	Member updatemember(Member member);

}
