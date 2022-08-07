package com.QuickyShoppers.Model;

public class ProductsModel {
	
	public int id;
	public String productName;
	public String productImage;
//	public ProductsModel(int id, String productName) {
//		super();
//		this.id = id;
//		this.productName = productName;
//	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public String getProductImage() {
		return productImage;
	}
	
	public void setProductImage(String productName) {
		this.productImage = productName;
	}
	
	

}
