package org.kh.youblog.member.model.dao;

import java.util.List;

import org.kh.youblog.member.model.vo.Member;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
("memberDao")

public class MemberDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public MemberDao(){}

	public Member selectBlogMember(String writerid) {
		
		return (Member)sqlSession.selectOne("memberMapper.selectBlogMember", writerid);
	}
	
		//로그인 요청시, 회원 정보 리턴하는 메소드
		public Member selectMember(Member member){
			return sqlSession.selectOne("memberMapper.loginCheck", member);
		}
		
		public Member joinmember(Member member){			
			return sqlSession.selectOne("memberMapper.insertmember", member);
		}

		
		public List<Member> selectList() {
			System.out.println("dao요청확인");
			return sqlSession.selectList("memberMapper.selectList");
		}

		public Member infoMember(String userid) {
			
			return (Member)sqlSession.selectOne("memberMapper.selectMember", userid);
		}

		public Member updateMember(Member member) {
			return sqlSession.selectOne("memberMapper.updateMember", member);
		}

}
