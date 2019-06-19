package pojo;

public class Shopping {
	private int saleID;
	private String fruitID;
	private String fruitName;
	private String images;
	private int price;
	private int number;
	private int prices;
	public Shopping(int saleID,String fruitID,String fruitName,String images,int price,int number,int prices) {
		this.saleID=saleID;
		this.fruitID=fruitID;
		this.fruitName=fruitName;
		this.images=images;
		this.number=number;
		this.price=price;
		this.prices=prices;
	}
	public int getSaleID() {
		return saleID;
	}
	public void setSaleID(int saleID) {
		this.saleID = saleID;
	}
	public String getFruitID() {
		return fruitID;
	}
	public void setFruitID(String fruitID) {
		this.fruitID = fruitID;
	}
	public String getFruitName() {
		return fruitName;
	}
	public void setFruitName(String fruitName) {
		this.fruitName = fruitName;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getPrices() {
		return prices;
	}
	public void setPrices(int prices) {
		this.prices = prices;
	}
}
