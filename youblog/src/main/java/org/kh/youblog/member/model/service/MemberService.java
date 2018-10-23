package org.kh.youblog.member.model.service;

import org.kh.youblog.member.model.vo.Member;

public interface MemberService {
	
	Member selectBlogMember(String writerid);

}
