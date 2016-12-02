CREATE TABLE Customer (
	CustomerID varchar2(100),
	CustomerPassword varchar2(100),
	CustomerName varchar2(100),
	CustomerAddress varchar2(100),
	CustomerMobileNumber number,
	CustomerEmail varchar2(100),
	CustomerAadhumber varchar2(100),
	CustomerPAN varchar2(100),
	CusotmerCity varchar2(100),
	RecordCreateDate DATE,
	RecordModifiedDate DATE,
	constraint CUSTOMER_PK PRIMARY KEY (CustomerID));
CREATE TABLE Retailer (
	RetailerID varchar2(100),
	RetailerPassword varchar2(100),
	RetailerName varchar2(100),
	RetailerLicense_ID varchar2(100),
	RetailerEmail varchar2(100),
	TINID varchar2(100),
	BranchAddress varchar2(100),
	BranchContactNumber varchar2(100),
	RecordCreateDate DATE,
	RecordModifiedDate DATE,
	constraint RETAILER_PK PRIMARY KEY (RetailerID));
CREATE TABLE ProductDetails (
	ProductID varchar2(100),
	RetailerID varchar2(100),
	Productname varchar2(100),
	Quantity varchar2(100),
	ProductCategory varchar2(100),
	ProductSubCategory varchar2(100),
	ProductMRP varchar2(100),
	ProductWarranty varchar2(100),
	ProductRegisrationDate DATE,
	ProductModifiedDate DATE,
	constraint PRODUCTDETAILS_PK PRIMARY KEY (ProductID));
CREATE TABLE TransactionDetails (
	BillNo varchar2(100),
	RetailerID varchar2(100),
	CustomerID varchar2(100),
	TotalAmount varchar2(100),
	TotalAmountAfterTax varchar2(100),
	Dateoftransaction DATE,
	ModeofPayment varchar2(100),
	TransactionRemarks varchar2(100),
	RecordCreateDate DATE,
	RecordModifiedDate DATE,
	constraint TRANSACTIONDETAILS_PK PRIMARY KEY (BillNo));

CREATE TABLE BillBreakUpDetails (
	BillNo varchar2(100),
	SlNo varchar2(100),
	ProductID varchar2(100),
	ProductQuanity varchar2(100),
	ProductMRP varchar2(100),
	DiscountonProduct varchar2(100),
	ProductCostafterdiscount varchar2(100),
	ProductPurchasedDate DATE,
	ProductModifiedDate DATE,
	constraint BillBreakUpDetails_PK PRIMARY KEY (BillNo, SlNo));
  ALTER TABLE ProductDetails ADD CONSTRAINT ProductDetails_fk0 FOREIGN KEY (RetailerID) REFERENCES Retailer (RetailerID);
  ALTER TABLE TransactionDetails ADD CONSTRAINT TransactionDetails_fk0 FOREIGN KEY (RetailerID) REFERENCES Retailer (RetailerID);
  ALTER TABLE TransactionDetails ADD CONSTRAINT TransactionDetails_fk1 FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID);
  ALTER TABLE BillBreakUpDetails ADD CONSTRAINT BillBreakUpDetails_fk0 FOREIGN KEY (BillNo) REFERENCES TransactionDetails (BillNo);
