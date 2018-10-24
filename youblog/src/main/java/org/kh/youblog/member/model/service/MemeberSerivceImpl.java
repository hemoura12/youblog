package org.kh.youblog.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.member.model.dao.MemberDao;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("MemberService")
public class MemeberSerivceImpl implements MemberService{
	
	@Autowired
	private MemberDao memberDao;
	
	public MemeberSerivceImpl(){}
	
	/*@Override
	public ArrayList<Member> selectList(){
		 List<Member> list = memberDao.selectList();
	      
	      return (ArrayList<Member>)list;
	}*/
	
	@Override
	   public Member selectBlogMember(String writerid) {
	      
	      return memberDao.selectBlogMember(writerid);
	   }

	@Override
	public ArrayList<Member> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

}
