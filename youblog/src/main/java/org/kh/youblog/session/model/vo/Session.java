package org.kh.youblog.session.model.vo;

import java.sql.Date;

public class Session implements java.io.Serializable{
	private final static long serialVersionUID = 15L;
	
	private String blogno;
	private String sessionname;
	private String memberid;
	private int blogorder;
	private int sessionorder;
	
	private String title; //Blog title과 같은것.
	private String writerid;
	private String contents;
	private int hits;
	private Date writedate;
	private String thumbnail;
	
	
	
	public Session(){}



	public Session(String blogno, String sessionname, String memberid, int blogorder, int sessionorder, String title,
			String writerid, String contents, int hits, Date writedate, String thumbnail) {
		super();
		this.blogno = blogno;
		this.sessionname = sessionname;
		this.memberid = memberid;
		this.blogorder = blogorder;
		this.sessionorder = sessionorder;
		this.title = title;
		this.writerid = writerid;
		this.contents = contents;
		this.hits = hits;
		this.writedate = writedate;
		this.thumbnail = thumbnail;
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



	public String getWriterid() {
		return writerid;
	}



	public void setWriterid(String writerid) {
		this.writerid = writerid;
	}



	public String getContents() {
		return contents;
	}



	public void setContents(String contents) {
		this.contents = contents;
	}



	public int getHits() {
		return hits;
	}



	public void setHits(int hits) {
		this.hits = hits;
	}



	public Date getWritedate() {
		return writedate;
	}



	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}



	public String getThumbnail() {
		return thumbnail;
	}



	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "Session [blogno=" + blogno + ", sessionname=" + sessionname + ", memberid=" + memberid + ", blogorder="
				+ blogorder + ", sessionorder=" + sessionorder + ", title=" + title + ", writerid=" + writerid
				+ ", contents=" + contents + ", hits=" + hits + ", writedate=" + writedate + ", thumbnail=" + thumbnail + "]";
	}
	
	

	
	
		
}
