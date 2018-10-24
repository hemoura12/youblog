package org.kh.youblog.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.kh.youblog.member.model.vo.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("MemberDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public MemberDao(){}
	
	public static ArrayList<Member> subsWriterList(String memberid) {
		//List<Member> result = sqlSession.selectList("blogMapper.favoriteList");
		//return (ArrayList<Member>)result;
		return null;
	}

}
