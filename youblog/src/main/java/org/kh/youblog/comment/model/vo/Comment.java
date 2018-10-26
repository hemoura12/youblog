package org.kh.youblog.comment.model.vo;

public class Comment implements java.io.Serializable {
	private final static long serialVersionUID = 12L;

	private String cmtno;
	private String blogno;
	private String memberid;
	private String cmtparentno;
	private String cmtcontents;
	private String state;

	public Comment() {}

	public Comment(String cmtno, String blogno, String memberid, String cmtparentno, String cmtcontents, String state) {
		super();
		this.cmtno = cmtno;
		this.blogno = blogno;
		this.memberid = memberid;
		this.cmtparentno = cmtparentno;
		this.cmtcontents = cmtcontents;
		this.state = state;
	}

	public String getCmtno() {
		return cmtno;
	}

	public void setCmtno(String cmtno) {
		this.cmtno = cmtno;
	}

	public String getBlogno() {
		return blogno;
	}

	public void setBlogno(String blogno) {
		this.blogno = blogno;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getCmtparentno() {
		return cmtparentno;
	}

	public void setCmtparentno(String cmtparentno) {
		this.cmtparentno = cmtparentno;
	}

	public String getCmtcontents() {
		return cmtcontents;
	}

	public void setCmtcontents(String cmtcontents) {
		this.cmtcontents = cmtcontents;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Comment [cmtno=" + cmtno + ", blogno=" + blogno + ", memberid=" + memberid + ", cmtparentno="
				+ cmtparentno + ", cmtcontents=" + cmtcontents + ", state=" + state + "]";
	}

	

}
