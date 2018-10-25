package org.kh.youblog.blog.model.vo;

import java.sql.Date;

public class Blog implements java.io.Serializable {
	private static final long serialVersionUID = 1L;

	private String rowno;
	private String blogno;
	private String title;
	private String writerid;
	private String contents;
	private String contentstag;
	private Date writedate;
	private String thumbnail;
	private String titleimage;
	private String catename1;
	private String catename2;
	private String tag;
	private int hits;
	private int hitstime;
	private int likecount;
	private String state;
	private String notice;
	private int bestno;
	private int catelevel;
	private int cateparent;
	private int likegood;
	private String membername;
	private int bedcount;

	private int readercount;
	private String readerid;

	public Blog(){}

	public Blog(String rowno, String blogno, String title, String writerid, String contents, String contentstag,
			Date writedate, String thumbnail, String titleimage, String catename1, String catename2, String tag,
			int hits, int hitstime, int likecount, String state, String notice, int bestno, int catelevel,
			int cateparent, int likegood, String membername, int bedcount, int readercount, String readerid) {
		super();
		this.rowno = rowno;
		this.blogno = blogno;
		this.title = title;
		this.writerid = writerid;
		this.contents = contents;
		this.contentstag = contentstag;
		this.writedate = writedate;
		this.thumbnail = thumbnail;
		this.titleimage = titleimage;
		this.catename1 = catename1;
		this.catename2 = catename2;
		this.tag = tag;
		this.hits = hits;
		this.hitstime = hitstime;
		this.likecount = likecount;
		this.state = state;
		this.notice = notice;
		this.bestno = bestno;
		this.catelevel = catelevel;
		this.cateparent = cateparent;
		this.likegood = likegood;
		this.membername = membername;
		this.bedcount = bedcount;
		this.readercount = readercount;
		this.readerid = readerid;
	}

	public String getRowno() {
		return rowno;
	}

	public void setRowno(String rowno) {
		this.rowno = rowno;
	}

	public String getBlogno() {
		return blogno;
	}

	public void setBlogno(String blogno) {
		this.blogno = blogno;
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

	public String getContentstag() {
		return contentstag;
	}

	public void setContentstag(String contentstag) {
		this.contentstag = contentstag;
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

	public String getTitleimage() {
		return titleimage;
	}

	public void setTitleimage(String titleimage) {
		this.titleimage = titleimage;
	}

	public String getCatename1() {
		return catename1;
	}

	public void setCatename1(String catename1) {
		this.catename1 = catename1;
	}

	public String getCatename2() {
		return catename2;
	}

	public void setCatename2(String catename2) {
		this.catename2 = catename2;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public int getHitstime() {
		return hitstime;
	}

	public void setHitstime(int hitstime) {
		this.hitstime = hitstime;
	}

	public int getLikecount() {
		return likecount;
	}

	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public int getBestno() {
		return bestno;
	}

	public void setBestno(int bestno) {
		this.bestno = bestno;
	}

	public int getCatelevel() {
		return catelevel;
	}

	public void setCatelevel(int catelevel) {
		this.catelevel = catelevel;
	}

	public int getCateparent() {
		return cateparent;
	}

	public void setCateparent(int cateparent) {
		this.cateparent = cateparent;
	}

	public int getLikegood() {
		return likegood;
	}

	public void setLikegood(int likegood) {
		this.likegood = likegood;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public int getBedcount() {
		return bedcount;
	}

	public void setBedcount(int bedcount) {
		this.bedcount = bedcount;
	}

	public int getReadercount() {
		return readercount;
	}

	public void setReadercount(int readercount) {
		this.readercount = readercount;
	}

	public String getReaderid() {
		return readerid;
	}

	public void setReaderid(String readerid) {
		this.readerid = readerid;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Blog [rowno=" + rowno + ", blogno=" + blogno + ", title=" + title + ", writerid=" + writerid
				+ ", contents=" + contents + ", contentstag=" + contentstag + ", writedate=" + writedate
				+ ", thumbnail=" + thumbnail + ", titleimage=" + titleimage + ", catename1=" + catename1
				+ ", catename2=" + catename2 + ", tag=" + tag + ", hits=" + hits + ", hitstime=" + hitstime
				+ ", likecount=" + likecount + ", state=" + state + ", notice=" + notice + ", bestno=" + bestno
				+ ", catelevel=" + catelevel + ", cateparent=" + cateparent + ", likegood=" + likegood + ", membername="
				+ membername + ", bedcount=" + bedcount + ", readercount=" + readercount + ", readerid=" + readerid
				+ "]";
	}
	
	
}