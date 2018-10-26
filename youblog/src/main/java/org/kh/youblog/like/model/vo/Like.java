package org.kh.youblog.like.model.vo;

public class Like implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	
	private String memberId;
	private String blogNo;
	private int likeGood;
	
	
	public Like(){}

	public Like(String memberId, String blogNo, int likeGood) {
		super();
		this.memberId = memberId;
		this.blogNo = blogNo;
		this.likeGood = likeGood;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getBlogNo() {
		return blogNo;
	}

	public void setBlogNo(String blogNo) {
		this.blogNo = blogNo;
	}

	public int getLikeGood() {
		return likeGood;
	}

	public void setLikeGood(int likeGood) {
		this.likeGood = likeGood;
	}
	
	@Override
	public String toString(){
		return "MemberId : " + memberId + ", BlogNo : " + blogNo + ", : LikeGood : " + likeGood;
	}
	
}
