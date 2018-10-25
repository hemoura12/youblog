package org.kh.youblog.comment.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

import org.kh.youblog.comment.model.vo.Comment;
import org.kh.youblog.comment.model.vo.Paging;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commentDao")
public class CommentDao {
   
   @Autowired
   private SqlSessionTemplate sqlSession;
   
   public CommentDao() {}

   //댓글 삭제
   public void delete(List<Long> ids) {
      ids.forEach(new Consumer<Long>() {
         @Override
         public void accept(Long id) {
            sqlSession.delete("commentMapper.delete", id);
         }
      });

   }

   //댓글 불러오기
   public List<Comment> selectList(String blogno) {
	   return sqlSession.selectList("commentMapper.selectList", blogno);
   }

}