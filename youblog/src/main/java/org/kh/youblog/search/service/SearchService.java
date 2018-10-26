package org.kh.youblog.search.service;

import java.util.List;

import org.kh.youblog.blog.model.vo.Blog;

public interface SearchService {
	List<Blog> selectSearch(String keyword);
	

}
