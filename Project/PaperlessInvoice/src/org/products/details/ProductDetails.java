package org.products.details;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
public class ProductDetails {
	@Id
	private int productId;
	private String productName;
	private int productQuantity;
	private String productCategory;
	private String productSubCategory;
	private float productMRP;
	private String productWarrenty;
	private String productStatus;
	private Date productModifiedDate;
	/**
	 * @return the productId
	 */
	@Column (name="PRODUCT_ID")
	public int getProductId() {
		return productId;
	}
	/**
	 * @param productId the productId to set
	 */
	public void setProductId(int productId) {
		this.productId = productId;
	}
	/**
	 * @return the productName
	 */
	@Column (name="PRODUCT_NAME")
	public String getProductName() {
		return productName;
	}
	/**
	 * @param productName the productName to set
	 */
	public void setProductName(String productName) {
		this.productName = productName;
	}
	/**
	 * @return the productQuantity
	 */
	@Column (name="PRODUCT_QUANTITY")
	public int getProductQuantity() {
		return productQuantity;
	}
	/**
	 * @param productQuantity the productQuantity to set
	 */
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	/**
	 * @return the productCategory
	 */
	@Column (name="PRODUCT_CATEGORY")
	public String getProductCategory() {
		return productCategory;
	}
	/**
	 * @param productCategory the productCategory to set
	 */
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	/**
	 * @return the productSubCategory
	 */
	@Column (name="PRODUCT_SUBCATEGORY")
	public String getProductSubCategory() {
		return productSubCategory;
	}
	/**
	 * @param productSubCategory the productSubCategory to set
	 */
	public void setProductSubCategory(String productSubCategory) {
		this.productSubCategory = productSubCategory;
	}
	/**
	 * @return the productMRP
	 */
	@Column (name="PRODUCT_MRP")
	public float getProductMRP() {
		return productMRP;
	}
	/**
	 * @param productMRP the productMRP to set
	 */
	public void setProductMRP(float productMRP) {
		this.productMRP = productMRP;
	}
	/**
	 * @return the productWarrenty
	 */
	@Column (name="PRODUCT_WARRANTY")
	public String getProductWarrenty() {
		return productWarrenty;
	}
	/**
	 * @param productWarrenty the productWarrenty to set
	 */
	public void setProductWarrenty(String productWarrenty) {
		this.productWarrenty = productWarrenty;
	}
	/**
	 * @return the productStatus
	 */
	@Column (name="PRODUCT_STATUS")
	public String getProductStatus() {
		return productStatus;
	}
	/**
	 * @param productStatus the productStatus to set
	 */
	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}
	/**
	 * @return the productModifiedDate
	 */
	@Column (name="PRODUCT_MODIFIEDDATE")
	public Date getProductModifiedDate() {
		return productModifiedDate;
	}
	/**
	 * @param productModifiedDate the productModifiedDate to set
	 */
	public void setProductModifiedDate(Date productModifiedDate) {
		this.productModifiedDate = productModifiedDate;
	}

}
