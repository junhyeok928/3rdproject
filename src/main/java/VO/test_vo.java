package VO;

import java.sql.Date;

public class test_vo {
	private String name;
	private Date st;
	private Date fn;
	private String stat;
	public test_vo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public test_vo(String name, Date st, Date fn, String stat) {
		super();
		this.name = name;
		this.st = st;
		this.fn = fn;
		this.stat = stat;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getSt() {
		return st;
	}
	public void setSt(Date st) {
		this.st = st;
	}
	public Date getFn() {
		return fn;
	}
	public void setFn(Date fn) {
		this.fn = fn;
	}
	public String getStat() {
		return stat;
	}
	public void setStat(String stat) {
		this.stat = stat;
	}
	
}
