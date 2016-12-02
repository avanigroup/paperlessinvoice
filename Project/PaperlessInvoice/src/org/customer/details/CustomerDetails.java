package org.customer.details;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
public class CustomerDetails {
    @Id
	private int customerId;
	private String customerName;
	private String customerPassword;
	private String customerAddress;
	private long customerMobileNo;
	private long customerAadharNo;
	private String customerPANNo;
	private String customerCity;
	private Date customerModifiedDate;
	/**
	 * @return the customerId
	 */
	@Column (name="CUSTOMER_ID")
	public int getCustomerId() {
		return customerId;
	}
	/**
	 * @param customerId the customerId to set
	 */
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	/**
	 * @return the customerName
	 */
	@Column (name="CUSTOMER_NAME")
	public String getCustomerName() {
		return customerName;
	}
	/**
	 * @param customerName the customerName to set
	 */
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	/**
	 * @return the customerPassword
	 */
	@Column (name="CUSTOMER_PASSWORD")
	public String getCustomerPassword() {
		return customerPassword;
	}
	/**
	 * @param customerPassword the customerPassword to set
	 */
	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}
	/**
	 * @return the customerAddress
	 */
	@Column (name="CUSTOMER_ADDRESS")
	public String getCustomerAddress() {
		return customerAddress;
	}
	/**
	 * @param customerAddress the customerAddress to set
	 */
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	/**
	 * @return the customerMobileNo
	 */
	@Column (name="CUSTOMER_MOBILENO")
	public long getCustomerMobileNo() {
		return customerMobileNo;
	}
	/**
	 * @param customerMobileNo the customerMobileNo to set
	 */
	public void setCustomerMobileNo(long customerMobileNo) {
		this.customerMobileNo = customerMobileNo;
	}
	/**
	 * @return the customerAadharNo
	 */
	@Column (name="CUSTOMER_AADHARNO")
	public long getCustomerAadharNo() {
		return customerAadharNo;
	}
	/**
	 * @param customerAadharNo the customerAadharNo to set
	 */
	public void setCustomerAadharNo(long customerAadharNo) {
		this.customerAadharNo = customerAadharNo;
	}
	/**
	 * @return the customerPANNo
	 */
	@Column (name="CUSTOMER_PANNO")
	public String getCustomerPANNo() {
		return customerPANNo;
	}
	/**
	 * @param customerPANNo the customerPANNo to set
	 */
	public void setCustomerPANNo(String customerPANNo) {
		this.customerPANNo = customerPANNo;
	}
	/**
	 * @return the customerCity
	 */
	@Column (name="CUSTOMER_CITY")
	public String getCustomerCity() {
		return customerCity;
	}
	/**
	 * @param customerCity the customerCity to set
	 */
	public void setCustomerCity(String customerCity) {
		this.customerCity = customerCity;
	}
	/**
	 * @return the customerModifiedDate
	 */
	@Column (name="CUSTOMER_MODIFIEDDATE")
	public Date getCustomerModifiedDate() {
		return customerModifiedDate;
	}
	/**
	 * @param customerModifiedDate the customerModifiedDate to set
	 */
	public void setCustomerModifiedDate(Date customerModifiedDate) {
		this.customerModifiedDate = customerModifiedDate;
	}

	
}
