create or replace trigger BIU_RETAILER
  before insert or update on RETAILER
  for each row
  DECLARE
  sequencenum number;
begin

  IF INSERTING THEN
  SELECT Retailer_sequence.nextval into sequencenum from dual;
  :new.RetailerID:=SUBSTR(:new.RetailerName, 1, 2)||sequencenum;
  :new.RecordCreateDate:=sysdate;
  :new.RecordModifiedDate:=sysdate;
  :new.status:=1;
  ELSIF UPDATING THEN
  :new.RecordModifiedDate:=sysdate;
  END IF;
end BIU_RETAILER;



create or replace trigger BIU_CUSTOMER
  before insert or update on CUSTOMER
  for each row
    DECLARE
  sequencenum number;
begin
  IF INSERTING THEN
  SELECT Customer_sequence.nextval into sequencenum from dual;
  :new.CustomerID:=SUBSTR(:new.CustomerName, 1, 64)||sequencenum;
  :new.RecordCreateDate:=sysdate;
  :new.RecordModifiedDate:=sysdate;
  :new.status:=1;
  ELSIF UPDATING THEN
  :new.RecordModifiedDate:=sysdate;
  END IF;
end BIU_CUSTOMER;




create or replace trigger BIU_TRANSACTIONDETAILS
  before insert or update on TRANSACTIONDETAILS
  for each row
  DECLARE
  sequencenum number;
begin

  IF INSERTING THEN
  SELECT TransactionDetails_sequence.nextval into sequencenum from dual;
  :new.BillNo :=sequencenum;
  :new.RecordCreateDate:=sysdate;
  :new.RecordModifiedDate:=sysdate;
  :new.status:=1;
  ELSIF UPDATING THEN
  :new.RecordModifiedDate:=sysdate;
  END IF;
end BIU_TRANSACTIONDETAILS;




create or replace trigger BIU_PRODUCTDETAILS
  before insert or update on PRODUCTDETAILS
  for each row
  DECLARE
  sequencenum number;
begin
  IF INSERTING THEN
  SELECT ProductDetails_sequence.nextval into sequencenum from dual;
  :new.ProductID:=sequencenum;
  :new.ProductRegisrationDate:=sysdate;
  :new.ProductModifiedDate:=sysdate;
  :new.status:=1;
  ELSIF UPDATING THEN
  :new.ProductModifiedDate:=sysdate;
  END IF;
end BIU_PRODUCTDETAILS;



CREATE OR REPLACE trigger BIU_BILLBREAKUPDETAILS
  before insert or update on BILLBREAKUPDETAILS
  for each row
begin
  IF INSERTING THEN
  :new.ProductPurchasedDate:=sysdate;
  :new.ProductModifiedDate:=sysdate;
  :new.status:=1;
  ELSIF UPDATING THEN
  :new.ProductModifiedDate:=sysdate;
  END IF;
end BIU_BILLBREAKUPDETAILS;
