package zzm.model;

public class Fruits {
	private int fruitID;
	private String fruitName;
	private String kind;
	private String origin;
	private int price;
	private String images;
	private String introduce;
	private int stock;
	
	public Fruits() {
		
	}
	
	public Fruits(int fruitID,String fruitName, String kind, String origin, int price, String images,
			String introduce, int stock) {
		super();
		this.fruitID = fruitID;
		this.fruitName = fruitName;
		this.kind = kind;
		this.origin = origin;
		this.price = price;
		this.images = images;
		this.introduce = introduce;
		this.stock = stock;
	}

	public Integer getFruitID() {
		return fruitID;
	}

	public void setFruitID(int time) {
		this.fruitID = time;
	}

	public String getFruitName() {
		return fruitName;
	}

	public void setFruitName(String fruitName) {
		this.fruitName = fruitName;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int i) {
		this.price = i;
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

	
	
	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	@Override
	public String toString() {
		return "Fruits [fruitName=" + fruitName + ", kind=" + kind+ ", origin=" + origin + ", price=" + price 
						+ ", images=" + images+ ", introduce=" + introduce+ ", stock=" + stock+ "]";
	}
}
