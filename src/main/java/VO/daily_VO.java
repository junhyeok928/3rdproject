package VO;

import java.util.Date;

public class daily_VO {
	private int daily_number;
	private String daily_title;
	private String daily_content;
	private String daily_answer;
	private Date sysdate;
	public daily_VO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public daily_VO(int daily_number, String daily_title, String daily_content, String daily_answer, Date sysdate) {
		super();
		this.daily_number = daily_number;
		this.daily_title = daily_title;
		this.daily_content = daily_content;
		this.daily_answer = daily_answer;
		this.sysdate = sysdate;
	}
	public int getDaily_number() {
		return daily_number;
	}
	public void setDaily_number(int daily_number) {
		this.daily_number = daily_number;
	}
	public String getDaily_title() {
		return daily_title;
	}
	public void setDaily_title(String daily_title) {
		this.daily_title = daily_title;
	}
	public String getDaily_content() {
		return daily_content;
	}
	public void setDaily_content(String daily_content) {
		this.daily_content = daily_content;
	}
	public String getDaily_answer() {
		return daily_answer;
	}
	public void setDaily_answer(String daily_answer) {
		this.daily_answer = daily_answer;
	}
	public Date getSysdate() {
		return sysdate;
	}
	public void setSysdate(Date sysdate) {
		this.sysdate = sysdate;
	}
	
	
}
 