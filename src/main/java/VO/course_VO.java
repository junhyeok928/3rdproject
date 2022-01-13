package VO;

public class course_VO {
	private String course_name;
	private String teacher_name;
	private String course_composition;
	private String course_price;
	private String user_id;
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getCourse_composition() {
		return course_composition;
	}
	public void setCourse_composition(String course_composition) {
		this.course_composition = course_composition;
	}
	public String getCourse_price() {
		return course_price;
	}
	public void setCourse_price(String course_price) {
		this.course_price = course_price;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public course_VO(String course_name, String teacher_name, String course_composition, String course_price,
			String user_id) {
		super();
		this.course_name = course_name;
		this.teacher_name = teacher_name;
		this.course_composition = course_composition;
		this.course_price = course_price;
		this.user_id = user_id;
	}
	public course_VO() {
		super();
		// TODO Auto-generated constructor stub
	}
}
