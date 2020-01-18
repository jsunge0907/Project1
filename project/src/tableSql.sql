drop table HYGIENE CASCADE CONSTRAINTS ;
drop table RIDER  CASCADE CONSTRAINTS;
drop table SHOPKEEPER  CASCADE CONSTRAINTS;
drop table USER2  CASCADE CONSTRAINTS;
drop table ORDER2 CASCADE CONSTRAINTS;
DROP TABLE MENU CASCADE CONSTRAINTS;
DROP TABLE DELIVERY CASCADE CONSTRAINTS;
DROP TABLE REVIEW CASCADE CONSTRAINTS;
DROP TABLE REPLY CASCADE CONSTRAINTS;
DROP TABLE FOODCATEGORY CASCADE CONSTRAINTS;
DROP TABLE ORDERLIST;

 CREATE TABLE USER2 
 (USER_ID VARCHAR2 (30) PRIMARY KEY,
 PW VARCHAR2 (15),
 USERNAME VARCHAR2 (15),
 USER_ADDRESS VARCHAR2(200),
 USER_PHONE NUMBER (11),
 CONSTRAINT USER2_PHONE_UK UNIQUE (USER_PHONE)
 );

 CREATE TABLE FOODCATEGORY 
 (UNQ_NUMBER CHAR(4) PRIMARY KEY,
 CATEGORY2 CHAR(20) 
 );

CREATE TABLE SHOPKEEPER 
(SHOPKEEPER_ID VARCHAR2 (30) PRIMARY KEY,
PW VARCHAR2 (15),
SHOPNAME VARCHAR2 (30),
SHOP_ADDRESS VARCHAR2(200),
BUSINESS_LICENSE NUMBER (10) ,
SHOP_TEL NUMBER(11),
SECTOR CHAR(2),
CONSTRAINT SHOP_BUSINESS_LICENSE_UK UNIQUE(BUSINESS_LICENSE),
CONSTRAINT SHOP_SHOP_TEL_UK UNIQUE(SHOP_TEL),
CONSTRAINT SHOP_SECTOR_FK FOREIGN KEY (SECTOR)
REFERENCES FOODCATEGORY(UNQ_NUMBER)
 );
 
 CREATE TABLE RIDER 
 (RIDER_ID VARCHAR2 (30) PRIMARY KEY,
 PW VARCHAR2(15),
 RIDER_NAME VARCHAR2(15),
 TRANSPORTATION VARCHAR2(20),
 LOC VARCHAR2(5),
 COMPANY VARCHAR2 (10),
 RIDER_PHONE NUMBER (11),
 CONSTRAINT RIDER_RIDER_PHONE_UK UNIQUE(RIDER_PHONE)
);

CREATE TABLE REVIEW 
(REVIEW_SEQ NUMBER(5) PRIMARY KEY,
USER_ID VARCHAR2 (30),
SHOP_ID VARCHAR2 (10),
RIDEER_ID VARCHAR2 (10),
SHOP_RATING  number (1),
RIDER_RATING number (1),
REVIEW varchar2(100),
CONSTRAINT REVIEW_USER_ID_FK FOREIGN KEY(USER_ID)
REFERENCES USER2(USER_ID),
CONSTRAINT REVIEW_RIDER_ID_FK FOREIGN KEY (RIDEER_ID)
REFERENCES RIDER(RIDER_ID)
);
 
create table MENU 
(MENU_SEQ NUMBER (7) PRIMARY KEY,
SHOPKEEPER_ID VARCHAR2 (10),
FOOD varchar2(10),
PRICE number(6),
CONSTRAINT MENU_SHOPKEEPER_ID_FK FOREIGN KEY (SHOPKEEPER_ID)
REFERENCES SHOPKEEPER(SHOPKEEPER_ID)
); 
 
CREATE TABLE ORDER2
(ORDER_NUMBER NUMBER (7),
USER_ID  VARCHAR2 (30) ,
SHOPKEEPER_ID VARCHAR2 (30),
MENU_SEQ NUMBER (7),
CONSTRAINT ORDER2_ONUM_UID_SID_OSEQ_PK PRIMARY KEY (ORDER_NUMBER,USER_ID,SHOPKEEPER_ID,MENU_SEQ),
CONSTRAINT ORDER2_USER_ID_FK FOREIGN KEY (USER_ID)
REFERENCES USER2(USER_ID),
CONSTRAINT ORDER2_SHOP_ID_FK FOREIGN KEY (SHOPKEEPER_ID)
REFERENCES SHOPKEEPER(SHOPKEEPER_ID),
CONSTRAINT ORDER2_MENU_SEQ_FK FOREIGN KEY (MENU_SEQ)
REFERENCES MENU(MENU_SEQ)
);
 


create table DELIVERY
(RIDER_ID VARCHAR2 (30) ,
ORDER_NUMBER NUMBER (7),
USER_ID  VARCHAR2 (30) ,
SHOPKEEPER_ID VARCHAR2 (30),
MENU_SEQ NUMBER (7),
CONSTRAINT DEL_RIDER_ID_FK FOREIGN KEY (RIDER_ID)
REFERENCES RIDER(RIDER_ID),
CONSTRAINT DEL_ONUM_UID_SID_MSEQ_FK FOREIGN KEY (ORDER_NUMBER, USER_ID,SHOPKEEPER_ID,MENU_SEQ )
REFERENCES ORDER2 (ORDER_NUMBER,USER_ID,SHOPKEEPER_ID,MENU_SEQ) );



CREATE TABLE REPLY    
(REPLY_SEQ NUMBER (5) PRIMARY KEY,
REVIEW_SEQ NUMBER (5),
REPLY VARCHAR2 (100),
CONSTRAINT REPLY_REVIEW_NUMBER_FK FOREIGN KEY(REVIEW_SEQ)
REFERENCES REVIEW(REVIEW_SEQ)
);

 create table HYGIENE 
(SHOPNAME VARCHAR2(15) ,
 BUSINESS_LICENSE NUMBER(10) PRIMARY kEY,
 VIOLATION_DETAILS VARCHAR2(10));
 
CREATE TABLE ORDERLIST
(MENU VARCHAR2 (50),
PRICE NUMBER (10),
USER_ID VARCHAR2 (30),
ORDER_DATE DATE  
);
 
INSERT INTO FOODCATEGORY VALUES(1,'한식');
INSERT INTO FOODCATEGORY VALUES(2,'치킨');
INSERT INTO FOODCATEGORY VALUES(3,'피자/양식');
INSERT INTO FOODCATEGORY VALUES(4,'족발/보쌈');
INSERT INTO FOODCATEGORY VALUES(5,'중국집');
INSERT INTO FOODCATEGORY VALUES(6,'카페/디저트'); 

CREATE TABLE  ORDERDETAILS
(ORDER_SEQ NUMBER (10),
USER_ID VARCHAR2 (30),
ORDER_DATE DATE ,
CONSTRAINT ORDERDETAILS_USER_ID_FK FOREIGN KEY(USER_ID)
REFERENCES USER2(USER_ID)
);

 
 
 