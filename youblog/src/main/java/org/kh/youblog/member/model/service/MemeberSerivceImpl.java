package org.kh.youblog.member.model.service;

import java.util.ArrayList;

import org.kh.youblog.member.model.dao.MemberDao;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.stereotype.Service;

@Service("MemberService")
public class MemeberSerivceImpl implements MemberService{
	public ArrayList<Member> subsWriterList(String memberid){
		return MemberDao.subsWriterList(memberid);
	}
}
