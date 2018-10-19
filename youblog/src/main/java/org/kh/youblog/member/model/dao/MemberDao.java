package org.kh.youblog.member.model.dao;

import java.util.List;

import org.kh.youblog.member.model.vo.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("MemberDao")
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Member> selectList() {
	      
	      return sqlSession.selectList("memberMapper.selectList");
	   }
	}


