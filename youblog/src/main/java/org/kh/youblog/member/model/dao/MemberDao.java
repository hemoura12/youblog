package org.kh.youblog.member.model.dao;

import org.kh.youblog.member.model.vo.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public MemberDao() {}

	/*public Member mychanelupdate(Member member) {
		System.out.println("Dao 가동");
		//return (Member)sqlSession.update("memberMapper.updateChanel", member);
		return member;
	}*/

	public int mychanelupdate(String check) {
		System.out.println("Dao 가동");
		
		return (int)sqlSession.update("memberMapper.updateChanel", check);
		//return check;
	}
	

}
