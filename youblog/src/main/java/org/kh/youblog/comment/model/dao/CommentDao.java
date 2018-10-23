package org.kh.youblog.comment.model.dao;

import java.util.List;
import java.util.function.Consumer;

import org.kh.youblog.comment.model.vo.Comment;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commentDao")
public class CommentDao {
   
   @Autowired
   private SqlSessionTemplate sqlSession;

   /*public List<Comment> selectList() {
      
      return sqlSession.selectList("commentMapper.selectList");
   }*/

   public void delete(List<Long> ids) {
      ids.forEach(new Consumer<Long>() {
         @Override
         public void accept(Long id) {
            sqlSession.delete("commentMapper.delete", id);
         }
      });

   }

public List<Comment> selectList(String blogno) {
	return sqlSession.selectList("commentMapper.selectList", blogno);
}
}