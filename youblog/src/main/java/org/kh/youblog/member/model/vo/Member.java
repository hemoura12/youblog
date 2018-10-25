package org.kh.youblog.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable{
	private final static long serialVersionUID = 10L;
	
	private String memberid;
	private String memberpwd;
	private String membername;
	private String memberphone;
	private String memberemail;
	private Date birthday;
	private String gender;
	private String membergoogleno;
	private String membergoogleid;
	private String manager;
	private String profilephoto;
	private String banner;
	private int readercount;
	private String readeropen;
	private String formula;
	private String partner;
	private String state;
	private Date memberdeletedate;
	private Date alarmcheck;
	private String readerid;
	private String writerid;

	public Member() {}

	public Member(String memberid, String memberpwd, String membername, String memberphone, String memberemail,
			Date birthday, String gender, String membergoogleno, String membergoogleid, String manager,
			String profilephoto, String banner, int readercount, String readeropen, String formula, String partner,
			String state, Date memberdeletedate, Date alarmcheck, String readerid, String writerid) {
		super();
		this.memberid = memberid;
		this.memberpwd = memberpwd;
		this.membername = membername;
		this.memberphone = memberphone;
		this.memberemail = memberemail;
		this.birthday = birthday;
		this.gender = gender;
		this.membergoogleno = membergoogleno;
		this.membergoogleid = membergoogleid;
		this.manager = manager;
		this.profilephoto = profilephoto;
		this.banner = banner;
		this.readercount = readercount;
		this.readeropen = readeropen;
		this.formula = formula;
		this.partner = partner;
		this.state = state;
		this.memberdeletedate = memberdeletedate;
		this.alarmcheck = alarmcheck;
		this.readerid = readerid;
		this.writerid = writerid;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getMemberpwd() {
		return memberpwd;
	}

	public void setMemberpwd(String memberpwd) {
		this.memberpwd = memberpwd;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public String getMemberphone() {
		return memberphone;
	}

	public void setMemberphone(String memberphone) {
		this.memberphone = memberphone;
	}

	public String getMemberemail() {
		return memberemail;
	}

	public void setMemberemail(String memberemail) {
		this.memberemail = memberemail;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMembergoogleno() {
		return membergoogleno;
	}

	public void setMembergoogleno(String membergoogleno) {
		this.membergoogleno = membergoogleno;
	}

	public String getMembergoogleid() {
		return membergoogleid;
	}

	public void setMembergoogleid(String membergoogleid) {
		this.membergoogleid = membergoogleid;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getProfilephoto() {
		return profilephoto;
	}

	public void setProfilephoto(String profilephoto) {
		this.profilephoto = profilephoto;
	}

	public String getBanner() {
		return banner;
	}

	public void setBanner(String banner) {
		this.banner = banner;
	}

	public int getReadercount() {
		return readercount;
	}

	public void setReadercount(int readercount) {
		this.readercount = readercount;
	}

	public String getReaderopen() {
		return readeropen;
	}

	public void setReaderopen(String readeropen) {
		this.readeropen = readeropen;
	}

	public String getFormula() {
		return formula;
	}

	public void setFormula(String formula) {
		this.formula = formula;
	}

	public String getPartner() {
		return partner;
	}

	public void setPartner(String partner) {
		this.partner = partner;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Date getMemberdeletedate() {
		return memberdeletedate;
	}

	public void setMemberdeletedate(Date memberdeletedate) {
		this.memberdeletedate = memberdeletedate;
	}

	public Date getAlarmcheck() {
		return alarmcheck;
	}

	public void setAlarmcheck(Date alarmcheck) {
		this.alarmcheck = alarmcheck;
	}

	public String getReaderid() {
		return readerid;
	}

	public void setReaderid(String readerid) {
		this.readerid = readerid;
	}

	public String getWriterid() {
		return writerid;
	}

	public void setWriterid(String writerid) {
		this.writerid = writerid;
	}

	@Override
	public String toString() {
		return "Member [memberid=" + memberid + ", memberpwd=" + memberpwd + ", membername=" + membername
				+ ", memberphone=" + memberphone + ", memberemail=" + memberemail + ", birthday=" + birthday
				+ ", gender=" + gender + ", membergoogleno=" + membergoogleno + ", membergoogleid=" + membergoogleid
				+ ", manager=" + manager + ", profilephoto=" + profilephoto + ", banner=" + banner + ", readercount="
				+ readercount + ", readeropen=" + readeropen + ", formula=" + formula + ", partner=" + partner
				+ ", state=" + state + ", memberdeletedate=" + memberdeletedate + ", alarmcheck=" + alarmcheck
				+ ", readerid=" + readerid + ", writerid=" + writerid + "]";
	}
	


}
