package org.kh.youblog.reference.model.vo;

public class Reference implements java.io.Serializable{
	private final static long serialVersionUID = 14L;
	private String blogno;
	private String memberid;
	
	private int resno;
	private int likegood;
	private int hisno;
	
	private int likecount; // == Blog lik_count
	
	public Reference(){}
	
	public Reference(String blogno, String memberid, int resno, int likegood, int hisno, int likecount) {
		super();
		this.blogno = blogno;
		this.memberid = memberid;
		this.resno = resno;
		this.likegood = likegood;
		this.hisno = hisno;
		this.likecount = likecount;
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

	public int getResno() {
		return resno;
	}

	public void setResno(int resno) {
		this.resno = resno;
	}

	public int getLikegood() {
		return likegood;
	}

	public void setLikegood(int likegood) {
		this.likegood = likegood;
	}

	public int getHisno() {
		return hisno;
	}

	public void setHisno(int hisno) {
		this.hisno = hisno;
	}

	public int getLikecount() {
		return likecount;
	}

	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Reference [blogno=" + blogno + ", memberid=" + memberid + ", resno=" + resno + ", likegood=" + likegood
				+ ", hisno=" + hisno + ", likecount=" + likecount + "]";
	}
	
	
	
	
		

}
