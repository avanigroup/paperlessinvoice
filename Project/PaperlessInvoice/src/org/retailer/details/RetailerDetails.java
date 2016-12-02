package org.retailer.details;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
public class RetailerDetails {
	@Id
	private int retailerId;
	private String retailerName;
	private String retailerPassword;
	private String retailerLicenseId;
	private String retailerEmailId;
	private String retailerTINId;
	private String retailerAddress;
	private long retailerMobileNo;
	private Date retailerModifiedDate;
	private String retailerCity;
	/**
	 * @return the retailerId
	 */
	@Column (name="RETAILER_ID")
	public int getRetailerId() {
		return retailerId;
	}
	/**
	 * @param retailerId the retailerId to set
	 */
	public void setRetailerId(int retailerId) {
		this.retailerId = retailerId;
	}
	/**
	 * @return the retailerName
	 */
	@Column (name="RETAILER_NAME")
	public String getRetailerName() {
		return retailerName;
	}
	/**
	 * @param retailerName the retailerName to set
	 */
	public void setRetailerName(String retailerName) {
		this.retailerName = retailerName;
	}
	/**
	 * @return the retailerPassword
	 */
	@Column (name="RETAILER_PASSWORD")
	public String getRetailerPassword() {
		return retailerPassword;
	}
	/**
	 * @param retailerPassword the retailerPassword to set
	 */
	public void setRetailerPassword(String retailerPassword) {
		this.retailerPassword = retailerPassword;
	}
	/**
	 * @return the retailerLicenseId
	 */
	@Column (name="RETAILER_LICENSEID")
	public String getRetailerLicenseId() {
		return retailerLicenseId;
	}
	/**
	 * @param retailerLicenseId the retailerLicenseId to set
	 */
	public void setRetailerLicenseId(String retailerLicenseId) {
		this.retailerLicenseId = retailerLicenseId;
	}
	/**
	 * @return the retailerEmailId
	 */
	@Column (name="RETAILER_EMAILID")
	public String getRetailerEmailId() {
		return retailerEmailId;
	}
	/**
	 * @param retailerEmailId the retailerEmailId to set
	 */
	public void setRetailerEmailId(String retailerEmailId) {
		this.retailerEmailId = retailerEmailId;
	}
	/**
	 * @return the retailerTINId
	 */
	@Column (name="RETAILER_TINID")
	public String getRetailerTINId() {
		return retailerTINId;
	}
	/**
	 * @param retailerTINId the retailerTINId to set
	 */
	public void setRetailerTINId(String retailerTINId) {
		this.retailerTINId = retailerTINId;
	}
	/**
	 * @return the retailerAddress
	 */
	@Column (name="RETAILER_ADDRESS")
	public String getRetailerAddress() {
		return retailerAddress;
	}
	/**
	 * @param retailerAddress the retailerAddress to set
	 */
	public void setRetailerAddress(String retailerAddress) {
		this.retailerAddress = retailerAddress;
	}
	/**
	 * @return the retailerMobileNo
	 */
	@Column (name="RETAILER_MOBILENO")
	public long getRetailerMobileNo() {
		return retailerMobileNo;
	}
	/**
	 * @param retailerMobileNo the retailerMobileNo to set
	 */
	public void setRetailerMobileNo(long retailerMobileNo) {
		this.retailerMobileNo = retailerMobileNo;
	}
	/**
	 * @return the retailerModifiedDate
	 */
	@Column (name="RETAILER_MODIFIEDDATE")
	public Date getRetailerModifiedDate() {
		return retailerModifiedDate;
	}
	/**
	 * @param retailerModifiedDate the retailerModifiedDate to set
	 */
	public void setRetailerModifiedDate(Date retailerModifiedDate) {
		this.retailerModifiedDate = retailerModifiedDate;
	}
	/**
	 * @return the retailerCity
	 */
	@Column (name="RETAILER_CITY")
	public String getRetailerCity() {
		return retailerCity;
	}
	/**
	 * @param retailerCity the retailerCity to set
	 */
	public void setRetailerCity(String retailerCity) {
		this.retailerCity = retailerCity;
	}

}
