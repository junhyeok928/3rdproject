package VO;

import java.util.Date;

public class notice_VO {
	private int notice_number;
	private String notice_title;
	private String notice_writer;
	private Date notice_hiredate;
	public notice_VO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public notice_VO(int notice_number, String notice_title, String notice_writer, Date notice_hiredate) {
		super();
		this.notice_number = notice_number;
		this.notice_title = notice_title;
		this.notice_writer = notice_writer;
		this.notice_hiredate = notice_hiredate;
	}
	public int getNotice_number() {
		return notice_number;
	}

	public void setNotice_number(int notice_number) {
		this.notice_number = notice_number;
	}

	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_writer() {
		return notice_writer;
	}
	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}
	public Date getNotice_hiredate() {
		return notice_hiredate;
	}
	public void setNotice_hiredate(Date notice_hiredate) {
		this.notice_hiredate = notice_hiredate;
	}
	
}
