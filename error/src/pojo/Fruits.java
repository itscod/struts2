package pojo;

public class Fruits {
	private String fruitID;
	private String fruitsname;
	private String kind;
	private String oring;
	private String price;
	private String images;
	private String introduce;
	private String stock;
	public Fruits(String fruitID,String fruitsname,String kind,String oring,String price,String images,String introduce,String stock) {
		this.fruitID = fruitID;
		this.fruitsname=fruitsname;
		this.images=images;
		this.introduce=introduce;
		this.kind=kind;
		this.oring=oring;
		this.price=price;
		this.stock=stock;
	}
	public String getFruitID() {
		return fruitID;
	}
	public void setFruitID(String fruitID) {
		this.fruitID = fruitID;
	}
	public String getFruitsname() {
		return fruitsname;
	}
	public void setFruitsname(String fruitsname) {
		this.fruitsname = fruitsname;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getOring() {
		return oring;
	}
	public void setOring(String oring) {
		this.oring = oring;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}
}
