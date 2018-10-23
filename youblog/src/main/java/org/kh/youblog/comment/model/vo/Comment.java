package org.kh.youblog.comment.model.vo;

public class Comment implements java.io.Serializable {
	private final static long serialVersionUID = 12L;
	
	private String cmtNo;
	private String blogNo;
	private String memberId;
	private String cmtParentno;
	private String cmtContents;
	private String state;
	
	
	public Comment(){}

	public Comment(String cmtNo, String blogNo, String memberId, String cmtParentno, String cmtContents, String state) {
		super();
		this.cmtNo = cmtNo;
		this.blogNo = blogNo;
		this.memberId = memberId;
		this.cmtParentno = cmtParentno;
		this.cmtContents = cmtContents;
		this.state = state;
		
	}

	public String getCmtNo() {
		return cmtNo;
	}

	public void setCmtNo(String cmtNo) {
		this.cmtNo = cmtNo;
	}

	public String getBlogNo() {
		return blogNo;
	}

	public void setBlogNo(String blogNo) {
		this.blogNo = blogNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getCmtParentno() {
		return cmtParentno;
	}

	public void setCmtParentno(String cmtParentno) {
		this.cmtParentno = cmtParentno;
	}

	public String getCmtContents() {
		return cmtContents;
	}

	public void setCmtContents(String cmtContents) {
		this.cmtContents = cmtContents;
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
		return "Comment [cmtNo=" + cmtNo + ", blogNo=" + blogNo + ", memberId=" + memberId + ", cmtParentno="
				+ cmtParentno + ", cmtContents=" + cmtContents + ", state=" + state + "]";
	}
	
	
	
	

}
