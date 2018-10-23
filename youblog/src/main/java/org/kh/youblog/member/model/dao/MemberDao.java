package org.kh.youblog.member.model.dao;

import org.kh.youblog.member.model.vo.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
("memberDao")

public class MemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public Member selectBlogMember(String writerid) {
		
		return (Member)sqlSession.selectOne("memberMapper.selectBlogMember", writerid);
	}

}