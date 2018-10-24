package org.kh.youblog.member.model.service;

import java.util.ArrayList;

import org.kh.youblog.member.model.vo.Member;
import org.springframework.stereotype.Service;

public interface MemberService {

	ArrayList<Member> subsWriterList(String memberid);

}
