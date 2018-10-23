package org.kh.youblog.category.model.vo;

public class Category implements java.io.Serializable{
	private final static long serialversionUID = 21L;
	
	public Category(){}
	
	private String cate_name1;	//대주제
	private String cate_name2;	//소주제

	public Category(String cate_name1, String cate_name2) {
		super();
		this.cate_name1 = cate_name1;
		this.cate_name2 = cate_name2;
	}

	public String getCate_name1() {
		return cate_name1;
	}

	public void setCate_name1(String cate_name1) {
		this.cate_name1 = cate_name1;
	}

	public String getCate_name2() {
		return cate_name2;
	}

	public void setCate_name2(String cate_name2) {
		this.cate_name2 = cate_name2;
	}

	public static long getSerialversionuid() {
		return serialversionUID;
	}

	@Override
	public String toString() {
		return "Category [cate_name1=" + cate_name1 + ", cate_name2=" + cate_name2 + "]";
	}
	
	
	
}
