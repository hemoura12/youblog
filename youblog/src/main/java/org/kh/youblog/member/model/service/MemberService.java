package org.kh.youblog.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.member.model.vo.Member;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.stereotype.Service;
import org.kh.youblog.member.model.vo.Member;
public interface MemberService {
	
	Member selectBlogMember(String writerid);

	ArrayList<Member> subsWriterList(String memberid);
	
	Member selectMember(Member member);
	
	int joinmember(Member member);

	List<Member> selectList();

	Member infoMember(String memberid);

	Member updatemember(Member member);
	
	void mychanelupdate(Member member);

}