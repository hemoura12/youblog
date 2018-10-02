package org.kh.youblog.session.model.vo;

public class Session implements java.io.Serializable{
	private final static long serialVersionUID = 15L;
	
	private String blogno;
	private String sessionname;
	private String memberid;
	private int blogorder;
	private int sessionorder;
	
	private String title; //Blog title과 같은것.
	
	public Session(){}
	
	public Session(String blogno, String sessionname, String memberid, int blogorder, int sessionorder, String title) {
		super();
		this.blogno = blogno;
		this.sessionname = sessionname;
		this.memberid = memberid;
		this.blogorder = blogorder;
		this.sessionorder = sessionorder;
		this.title = title;
	}

	public String getBlogno() {
		return blogno;
	}

	public void setBlogno(String blogno) {
		this.blogno = blogno;
	}

	public String getSessionname() {
		return sessionname;
	}

	public void setSessionname(String sessionname) {
		this.sessionname = sessionname;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public int getBlogorder() {
		return blogorder;
	}

	public void setBlogorder(int blogorder) {
		this.blogorder = blogorder;
	}

	public int getSessionorder() {
		return sessionorder;
	}

	public void setSessionorder(int sessionorder) {
		this.sessionorder = sessionorder;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Session [blogno=" + blogno + ", sessionname=" + sessionname + ", memberid=" + memberid + ", blogorder="
				+ blogorder + ", sessionorder=" + sessionorder + ", title=" + title + "]";
	}
	
	
	
}
