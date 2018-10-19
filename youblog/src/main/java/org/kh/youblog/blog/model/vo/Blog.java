package org.kh.youblog.blog.model.vo;

import java.sql.Date;

public class Blog implements java.io.Serializable {
	private static final long serialVersionUID = 1L;

	private String rowno;
	private String blogno;
	private String title;
	private String writerid;
	private String membername;
	private String contents;
	private String contentstag;
	private Date writerdate;
	private String thumbnail;
	private String titleimage;
	private String catename1;
	private String catename2;
	private String tag;
	private int hits;
	private int hitstime;
	private int likecount;
	private int bedcount;
	private String state;
	private String notice;
	private int bestno;

	private int readercount;
	private String readerid;

	private int catelevel;
	private int cateparent;

	private int likegood;

	
	public String getRowno() {
		return rowno;
	}

	public void setRowno(String rowno) {
		this.rowno = rowno;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
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

	public Date getWriterdate() {
		return writerdate;
	}

	public void setWriterdate(Date writerdate) {
		this.writerdate = writerdate;
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

	public int getBedcount() {
		return bedcount;
	}

	public void setBedcount(int bedcount) {
		this.bedcount = bedcount;
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

	@Override
	public String toString() {
		return "Blog [blogno=" + blogno + ", title=" + title + ", writerid=" + writerid + ", contents=" + contents
				+ ", contentstag=" + contentstag + ", writerdate=" + writerdate + ", thumbnail=" + thumbnail
				+ ", titleimage=" + titleimage + ", catename1=" + catename1 + ", catename2=" + catename2 + ", tag="
				+ tag + ", hits=" + hits + ", hitstime=" + hitstime + ", likecount=" + likecount + ", bedcount="
				+ bedcount + ", state=" + state + ", notice=" + notice + ", bestno=" + bestno + ", catelevel="
				+ catelevel + ", cateparent=" + cateparent + ", likegood=" + likegood + "]";
	}

}