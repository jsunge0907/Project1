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
DROP TABLE ONOFF CASCADE CONSTRAINTS;
DROP SEQUENCE SEQ ;
DROP SEQUENCE SEQ_MENU;

CREATE SEQUENCE SEQ start with 1 increment BY 1 NOMAXVALUE ;
CREATE SEQUENCE SEQ_MENU start with 1 increment BY 1 NOMAXVALUE ;


 CREATE TABLE USER2 
 (USER_ID VARCHAR2 (30) PRIMARY KEY,
 PW VARCHAR2 (15),
 USERNAME VARCHAR2 (15),
 USER_ADDRESS VARCHAR2(200),
 USER_PHONE NUMBER (11),
 CONSTRAINT USER2_PHONE_UK UNIQUE (USER_PHONE)
 );

Insert into USER2 (USER_ID,PW,USERNAME,USER_ADDRESS,USER_PHONE) values ('1','1','������','123456',1236587);
Insert into USER2 (USER_ID,PW,USERNAME,USER_ADDRESS,USER_PHONE) values ('2','2','�輺��','1235478',2821575);
Insert into USER2 (USER_ID,PW,USERNAME,USER_ADDRESS,USER_PHONE) values ('3','3','������','2135748',123575);
Insert into USER2 (USER_ID,PW,USERNAME,USER_ADDRESS,USER_PHONE) values ('4','4','�����','12357',1235755);
Insert into USER2 (USER_ID,PW,USERNAME,USER_ADDRESS,USER_PHONE) values ('5','5','������','12357',125722);


 CREATE TABLE FOODCATEGORY 
 (UNQ_NUMBER VARCHAR2(4) PRIMARY KEY,
 CATEGORY2 VARCHAR2(20)  );
Insert into FOODCATEGORY (UNQ_NUMBER,CATEGORY2) values ('1','�ѽ� ');
Insert into FOODCATEGORY (UNQ_NUMBER,CATEGORY2) values ('2','ġŲ ');
Insert into FOODCATEGORY (UNQ_NUMBER,CATEGORY2) values ('3','����/��� ');
Insert into FOODCATEGORY (UNQ_NUMBER,CATEGORY2) values ('4','����/���� ');
Insert into FOODCATEGORY (UNQ_NUMBER,CATEGORY2) values ('5','�߱��� ');
Insert into FOODCATEGORY (UNQ_NUMBER,CATEGORY2) values ('6','ī��/����Ʈ ');

CREATE TABLE ONOFF
(UNQ NUMBER (2) PRIMARY KEY,
ONOFF VARCHAR2 (3));

INSERT INTO ONOFF VALUES (0,'ON');
INSERT INTO ONOFF VALUES (1,'OFF');

CREATE TABLE SHOPKEEPER 
(SHOPKEEPER_ID VARCHAR2 (30) PRIMARY KEY,
PW VARCHAR2 (15),
SHOPNAME VARCHAR2 (30),
SHOP_ADDRESS VARCHAR2(200),
BUSINESS_LICENSE NUMBER (10) ,
SHOP_TEL VARCHAR2(20),
SECTOR VARCHAR2(20),
ONOFF NUMBER (2),
CONSTRAINT SHOP_BUSINESS_LICENSE_UK UNIQUE(BUSINESS_LICENSE),
CONSTRAINT SHOP_SHOP_TEL_UK UNIQUE(SHOP_TEL),
CONSTRAINT SHOP_SECTOR_FK FOREIGN KEY (SECTOR)
REFERENCES FOODCATEGORY(UNQ_NUMBER),
CONSTRAINT SHOP_ONOFF_FK FOREIGN KEY (ONOFF)
REFERENCES ONOFF(UNQ)
 );
 
Insert into SHOPKEEPER values ('6','6','����ġŲ','0987',6666666666,'12358986','2',0);
Insert into SHOPKEEPER  values ('7','7','��䳪��','56485',7777777777,'5489-524','1',0);
Insert into SHOPKEEPER  values ('8','8','��ȭ��','13578',8888888888,'98725-54','5',0);
Insert into SHOPKEEPER  values ('9','9','ī������','2315',9999999999,'54654564','6',0);
Insert into SHOPKEEPER values ('14','14','�Ѽ�','65415',14141499,'5654664','1',0);
 
 
 CREATE TABLE RIDER 
 (RIDER_ID VARCHAR2 (30) PRIMARY KEY,
 PW VARCHAR2(15),
 RIDER_NAME VARCHAR2(15),
 TRANSPORTATION VARCHAR2(20),
 LOC VARCHAR2(5),
 RIDER_PHONE NUMBER (11),
 CONSTRAINT RIDER_RIDER_PHONE_UK UNIQUE(RIDER_PHONE)
);
Insert into RIDER (RIDER_ID,PW,RIDER_NAME,TRANSPORTATION,LOC,RIDER_PHONE) values ('10','10','����','�������','41236',25458);
Insert into RIDER (RIDER_ID,PW,RIDER_NAME,TRANSPORTATION,LOC,RIDER_PHONE) values ('11','11','â��','������','12357',218567);
Insert into RIDER (RIDER_ID,PW,RIDER_NAME,TRANSPORTATION,LOC,RIDER_PHONE) values ('12','12','����','��Ÿ','12385',28751);
Insert into RIDER (RIDER_ID,PW,RIDER_NAME,TRANSPORTATION,LOC,RIDER_PHONE) values ('13','13','����','�������','12358',88147);


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
REFERENCES RIDER(RIDER_ID),
CONSTRAINT REVIEW_SHOP_ID_FK FOREIGN KEY (SHOP_ID)
REFERENCES SHOPKEEPER(SHOPKEEPER_ID)
);
 
create table MENU 
(MENU_SEQ NUMBER (7) PRIMARY KEY,
SHOPKEEPER_ID VARCHAR2 (10),
FOOD varchar2(100),
PRICE number(6),
CONSTRAINT MENU_SHOPKEEPER_ID_FK FOREIGN KEY (SHOPKEEPER_ID)
REFERENCES SHOPKEEPER(SHOPKEEPER_ID)
); 
 
Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','��ȭ���ö�',10000);
Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','���������ö�',8000);
Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','���޷�������',7000);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','������ȭ���� ����',5700);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','��ȭ ¥�庺����',4700);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','����������Ƣ�輼Ʈ',4800);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','�������',3900);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','��ġ�������',5200);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','��ġ�������',6000);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','���������ô԰������',5600);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','������ô԰������',5500);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','��������ô԰������',5500);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','������ôԵ��ö�',3900);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','��ȭ���ö�',4000);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','ġŲ�������ö�',4400);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','���鵵�ö�',5000);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','ĥ���������������ô�',4000);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','��������ô�',3900);
Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','�ް�ġŲ����',5200);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','�ް�ġŲ����',6900);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'14','�ް��������',7900);
 Insert into MENU (MENU_SEQ,SHOPKEEPER_ID,FOOD,PRICE) values (SEQ.NEXTVAL,'6','���߹ٻ��',17900);
 
 
CREATE TABLE ORDER2
(ORDER_NUMBER NUMBER (7),
USER_ID  VARCHAR2 (30) ,
SHOPKEEPER_ID VARCHAR2 (30),
MENU_SEQ NUMBER (7),
DATA1 DATE, 
CONSTRAINT ORDER2_ONUM_UID_SID_OSEQ_PK PRIMARY KEY (ORDER_NUMBER,USER_ID,SHOPKEEPER_ID,MENU_SEQ),
CONSTRAINT ORDER2_USER_ID_FK FOREIGN KEY (USER_ID)
REFERENCES USER2(USER_ID),
CONSTRAINT ORDER2_SHOP_ID_FK FOREIGN KEY (SHOPKEEPER_ID)
REFERENCES SHOPKEEPER(SHOPKEEPER_ID),
CONSTRAINT ORDER2_MENU_SEQ_FK FOREIGN KEY (MENU_SEQ)
REFERENCES MENU(MENU_SEQ)
);
 
INSERT INTO ORDER2 VALUES (SEQ_MENU.NEXTVAL, '1','14',1,SYSDATE);
INSERT INTO ORDER2 VALUES (SEQ_MENU.NEXTVAL, '1','14',2,SYSDATE);
INSERT INTO ORDER2 VALUES (SEQ_MENU.NEXTVAL, '1','14',3,SYSDATE);
INSERT INTO ORDER2 VALUES (SEQ_MENU.NEXTVAL, '1','6',22,SYSDATE);


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
 
Insert into HYGIENE (SHOPNAME,BUSINESS_LICENSE,VIOLATION_DETAILS) values ('����ġŲ',1234567890,'������');
Insert into HYGIENE (SHOPNAME,BUSINESS_LICENSE,VIOLATION_DETAILS) values ('�������',2345678901,'������');
Insert into HYGIENE (SHOPNAME,BUSINESS_LICENSE,VIOLATION_DETAILS) values ('�����߱���',3456789012,'������');



 