package org.kh.youblog.member.model.service;

import java.util.ArrayList;

import org.kh.youblog.member.model.vo.Member;
import org.springframework.stereotype.Service;
import org.kh.youblog.member.model.vo.Member;
public interface MemberService {
	
	Member selectBlogMember(String writerid);

	ArrayList<Member> subsWriterList(String memberid);

}
