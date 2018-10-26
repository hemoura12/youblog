package org.kh.youblog.search.service;

import java.util.List;

import org.kh.youblog.blog.model.vo.Blog;
import org.kh.youblog.search.dao.SearchDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("sService")
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	private SearchDao sDao;
	
	@Override
	public List<Blog> selectSearch(String keyword){
		return sDao.searchList(keyword);
	}
	

}
