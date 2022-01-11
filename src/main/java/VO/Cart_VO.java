package VO;

public class Cart_VO {
	private String title;
	private String name;
	private int compose;
	private int price;
	private int disprice;
	private int finprice;
	public Cart_VO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cart_VO(String title, String name, int compose, int price, int disprice, int finprice) {
		super();
		this.title = title;
		this.name = name;
		this.compose = compose;
		this.price = price;
		this.disprice = disprice;
		this.finprice = finprice;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDisprice() {
		return disprice;
	}
	public void setDisprice(int disprice) {
		this.disprice = disprice;
	}
	public int getFinprice() {
		return finprice;
	}
	public void setFinprice(int finprice) {
		this.finprice = finprice;
	}
	
}
