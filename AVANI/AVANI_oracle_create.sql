CREATE TABLE "Customer" (
	"Customer_ID" varchar2,
	"Customer Password" varchar2,
	"Customer Name" varchar2,
	"Customer Address" varchar2,
	"Customer Mobile Number " number,
	"Customer Email" varchar2,
	"Customer Aadhumberl" varchar2,
	"Customer PAN" varchar2,
	"Cusotmer City" varchar2,
	"Bill No" varchar2,
	constraint CUSTOMER_PK PRIMARY KEY ("Customer_ID")
CREATE sequence "CUSTOMER_SEQ"
/
CREATE trigger "BI_CUSTOMER"
  before insert on "CUSTOMER"
  for each row
begin
  select "CUSTOMER_SEQ".nextval into :NEW."Customer_ID" from dual;
end;
/

)
/
CREATE TABLE "Retailer " (
	"Retailer_ID" varchar2,
	"Retailer Password" varchar2,
	"Retailer Name" varchar2,
	"Retailer License ID" varchar2,
	"Retailer Branch Code" varchar2,
	"Retailer Email" varchar2,
	"Retailer Head Office Address" varchar2,
	constraint RETAILER _PK PRIMARY KEY ("Retailer_ID")
CREATE sequence "RETAILER _SEQ"
/
CREATE trigger "BI_RETAILER "
  before insert on "RETAILER "
  for each row
begin
  select "RETAILER _SEQ".nextval into :NEW."Retailer_ID" from dual;
end;
/

)
/
CREATE TABLE "Branch Details" (
	"Branch Code" varchar2,
	"Branch Name" varchar2,
	"Branch Password" varchar2,
	"Branch TIN ID" varchar2,
	"Branch Email" varchar2,
	"Branch Mobile Number" number,
	"Branch Address" varchar2,
	"Branch City/PIN" varchar2,
	constraint BRANCH DETAILS_PK PRIMARY KEY ("Branch Code")
CREATE sequence "BRANCH DETAILS_SEQ"
/
CREATE trigger "BI_BRANCH DETAILS"
  before insert on "BRANCH DETAILS"
  for each row
begin
  select "BRANCH DETAILS_SEQ".nextval into :NEW."Branch Code" from dual;
end;
/

)
/
CREATE TABLE "Product Details" (
	"Product ID" varchar2,
	"Product name" varchar2,
	"Product Category" varchar2,
	"Product Sub Category" varchar2,
	"Product MRP" varchar2,
	"Retailer ID" varchar2,
	"Product Warranty" varchar2,
	constraint PRODUCT DETAILS_PK PRIMARY KEY ("Product ID")
CREATE sequence "PRODUCT DETAILS_SEQ"
/
CREATE trigger "BI_PRODUCT DETAILS"
  before insert on "PRODUCT DETAILS"
  for each row
begin
  select "PRODUCT DETAILS_SEQ".nextval into :NEW."Product ID" from dual;
end;
/

)
/
CREATE TABLE "Transaction Details" (
	"Bill No" varchar2,
	"Retailer ID" varchar2,
	"Branch Code" varchar2,
	"Branch Name" varchar2,
	"TIN ID" varchar2,
	"Customer_ID" varchar2,
	"Customer Name" varchar2,
	"Product Name" varchar2,
	"Product Quanity" varchar2,
	"Product MRP" varchar2,
	"Discount on Product" varchar2,
	"Product Cost(after discount)" varchar2,
	"Total Amount" varchar2,
	"Total Amount (after tax)" varchar2,
	"Date of transaction" DATE,
	"Mode of Payment" varchar2,
	"Transaction Remarks" varchar2,
	constraint TRANSACTION DETAILS_PK PRIMARY KEY ("Bill No")
CREATE sequence "TRANSACTION DETAILS_SEQ"
/
CREATE trigger "BI_TRANSACTION DETAILS"
  before insert on "TRANSACTION DETAILS"
  for each row
begin
  select "TRANSACTION DETAILS_SEQ".nextval into :NEW."Bill No" from dual;
end;
/

)
/
ALTER TABLE "Customer" ADD CONSTRAINT "Customer_fk0" FOREIGN KEY ("Bill No") REFERENCES Transaction Details("Bill No");



ALTER TABLE "Product Details" ADD CONSTRAINT "Product Details_fk0" FOREIGN KEY ("Retailer ID") REFERENCES Retailer ("Retailer_ID");

ALTER TABLE "Transaction Details" ADD CONSTRAINT "Transaction Details_fk0" FOREIGN KEY ("Retailer ID") REFERENCES Retailer ("Retailer_ID");
ALTER TABLE "Transaction Details" ADD CONSTRAINT "Transaction Details_fk1" FOREIGN KEY ("Branch Code") REFERENCES Branch Details("Branch Code");
ALTER TABLE "Transaction Details" ADD CONSTRAINT "Transaction Details_fk2" FOREIGN KEY ("Branch Name") REFERENCES Branch Details("Branch Name");
ALTER TABLE "Transaction Details" ADD CONSTRAINT "Transaction Details_fk3" FOREIGN KEY ("TIN ID") REFERENCES Branch Details("Branch TIN ID");
ALTER TABLE "Transaction Details" ADD CONSTRAINT "Transaction Details_fk4" FOREIGN KEY ("Customer_ID") REFERENCES Customer("Customer_ID");
ALTER TABLE "Transaction Details" ADD CONSTRAINT "Transaction Details_fk5" FOREIGN KEY ("Customer Name") REFERENCES Customer("Customer Name");
ALTER TABLE "Transaction Details" ADD CONSTRAINT "Transaction Details_fk6" FOREIGN KEY ("Product Name") REFERENCES Product Details("Product name");
ALTER TABLE "Transaction Details" ADD CONSTRAINT "Transaction Details_fk7" FOREIGN KEY ("Product Quanity") REFERENCES Product Details("Product name");
ALTER TABLE "Transaction Details" ADD CONSTRAINT "Transaction Details_fk8" FOREIGN KEY ("Product MRP") REFERENCES Product Details("Product MRP");

