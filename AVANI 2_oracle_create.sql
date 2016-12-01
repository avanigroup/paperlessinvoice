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
	"Retailer Email" varchar2,
	"TIN ID" varchar2,
	"Branch Address" varchar2,
	"Branch Contact Number" varchar2,
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
CREATE TABLE "Product Details" (
	"Product ID" varchar2,
	"Retailer ID" varchar2,
	"Product name" varchar2,
	"Quantity" varchar2,
	"Product Category" varchar2,
	"Product Sub Category" varchar2,
	"Product MRP" varchar2,
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
CREATE TABLE "Transaction Detail" (
	"Bill No" varchar2,
	"Retailer ID" varchar2,
	"Customer_ID" varchar2,
	"Total Amount" varchar2,
	"Total Amount (after tax)" varchar2,
	"Date of transaction" DATE,
	"Mode of Payment" varchar2,
	"Transaction Remarks" varchar2,
	constraint TRANSACTION DETAIL_PK PRIMARY KEY ("Bill No")
CREATE sequence "TRANSACTION DETAIL_SEQ"
/
CREATE trigger "BI_TRANSACTION DETAIL"
  before insert on "TRANSACTION DETAIL"
  for each row
begin
  select "TRANSACTION DETAIL_SEQ".nextval into :NEW."Bill No" from dual;
end;
/

)
/
CREATE TABLE "Bill Break Up Details" (
	"Bill No" varchar2,
	"Sl No" varchar2,
	"Product ID" varchar2,
	"Product Quanity" varchar2,
	"Product MRP" varchar2,
	"Discount on Product" varchar2,
	"Product Cost(after discount)" varchar2
)
/


ALTER TABLE "Product Details" ADD CONSTRAINT "Product Details_fk0" FOREIGN KEY ("Retailer ID") REFERENCES Retailer ("Retailer_ID");

ALTER TABLE "Transaction Detail" ADD CONSTRAINT "Transaction Detail_fk0" FOREIGN KEY ("Retailer ID") REFERENCES Retailer ("Retailer_ID");
ALTER TABLE "Transaction Detail" ADD CONSTRAINT "Transaction Detail_fk1" FOREIGN KEY ("Customer_ID") REFERENCES Customer("Customer_ID");

ALTER TABLE "Bill Break Up Details" ADD CONSTRAINT "Bill Break Up Details_fk0" FOREIGN KEY ("Bill No") REFERENCES Transaction Detail("Bill No");
ALTER TABLE "Bill Break Up Details" ADD CONSTRAINT "Bill Break Up Details_fk1" FOREIGN KEY ("Product MRP") REFERENCES Product Details("Product MRP");

