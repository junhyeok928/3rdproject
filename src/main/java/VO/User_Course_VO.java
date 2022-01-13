package VO;

import java.sql.Date;

public class User_Course_VO {
	private String user_id;
	private String title;
	private String name;
	private int compose;
	private int composeing;
	private Date start_date;
	private Date finish_date;
	private String state;
	public User_Course_VO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User_Course_VO(String user_id, String title, String name, int compose, int composeing, Date start_date,
			Date finish_date, String state) {
		super();
		this.user_id = user_id;
		this.title = title;
		this.name = name;
		this.compose = compose;
		this.composeing = composeing;
		this.start_date = start_date;
		this.finish_date = finish_date;
		this.state = state;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCompose() {
		return compose;
	}
	public void setCompose(int compose) {
		this.compose = compose;
	}
	public int getComposeing() {
		return composeing;
	}
	public void setComposeing(int composeing) {
		this.composeing = composeing;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getFinish_date() {
		return finish_date;
	}
	public void setFinish_date(Date finish_date) {
		this.finish_date = finish_date;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}
