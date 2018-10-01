package org.kh.youblog.movie.model.vo;

import java.sql.Date;

public class Movie implements java.io.Serializable{
	private final static long serialVerisionUID = 13L;
	
	private String movieno;
	private String title;
	private String writerid;
	private String category;
	private String filename;
	private String contents;
	private Date writerdate;
	private String thumbnail;
	private int hits;
	private int hitstime;
	
	public Movie(){}

	public Movie(String movieno, String title, String writerid, String category, String filename, String contents,
			Date writerdate, String thumbnail, int hits, int hitstime) {
		super();
		this.movieno = movieno;
		this.title = title;
		this.writerid = writerid;
		this.category = category;
		this.filename = filename;
		this.contents = contents;
		this.writerdate = writerdate;
		this.thumbnail = thumbnail;
		this.hits = hits;
		this.hitstime = hitstime;
	}

	public String getMovieno() {
		return movieno;
	}

	public void setMovieno(String movieno) {
		this.movieno = movieno;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
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

	public static long getSerialverisionuid() {
		return serialVerisionUID;
	}

	@Override
	public String toString() {
		return "Movie [movieno=" + movieno + ", title=" + title + ", writerid=" + writerid + ", category=" + category
				+ ", filename=" + filename + ", contents=" + contents + ", writerdate=" + writerdate + ", thumbnail="
				+ thumbnail + ", hits=" + hits + ", hitstime=" + hitstime + "]";
	}
	
	

}
