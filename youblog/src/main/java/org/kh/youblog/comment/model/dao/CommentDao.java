package org.kh.youblog.comment.model.dao;

import java.util.List;

import org.kh.youblog.comment.model.vo.Comment;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commentDao")
public class CommentDao {
   
   @Autowired
   private SqlSessionTemplate sqlSession;

   public List<Comment> selectList() {
      
      return sqlSession.selectList("commentMapper.selectList");
   }

}