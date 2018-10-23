package org.kh.youblog.member.model.dao;

import java.util.List;

import org.kh.youblog.member.model.vo.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public MemberDao() {}

	public int mychanelupdate(Member member) {
		System.out.println("Dao 가동");
		return sqlSession.update("memberMapper.updateChanel", member);
		//return member;
	}

	public List<Member> selectList() {
		return sqlSession.selectList("memberMapper.selectList");
	}

/*	public int mychanelupdate(String check) {
		System.out.println("Dao 가동");
		
		return (int)sqlSession.update("memberMapper.updateChanel", check);
		//return check;
	}*/
	

}
