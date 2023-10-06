/*
drop sequence seq_category_category_idx;
  drop sequence seq_product_p_idx;
   drop sequence seq_member_mem_idx;
    drop sequence seq_owner_o_idx;
     drop sequence seq_cart_cart_idx;
      drop sequence seq_category_category_idx;
       drop sequence seq_comment_board_c_b_idx;
        drop sequence seq_pay_pay_idx;
         drop sequence seq_admin_admin_idx;







create sequence seq_owner_o_idx

create table owner
    (
        o_idx int,
        o_name varchar2(50),
        o_email varchar2(100),
        o_id varchar2(50),
        o_pwd varchar2(50),
        o_addr varchar2(100),
        o_tel varchar2(50)
    )
    
    alter table owner 
	add constraint pk_owner_o_idx primary key(o_idx);
    
    alter table owner
	add constraint unique_owner_o_id unique(o_id);

  INSERT INTO owner VALUES(
    SEQ_owner_o_idx.NEXTVAL,
    '홍길동',
    '1234@1234.com',
    '1234',
    '1234',
    '1234',
    '010-1234-1234'
);

ALTER TABLE owner
	ADD approvalStatus VARCHAR(255);


!!!! 우편번호 추가함 !!!!
alter table owner
  add o_zipcode varchar2(100);

---------------------------------------------------------------------------------------
create sequence seq_category_category_idx

create table category
(
category_idx int ,
category_code int,
category_name varchar2(100)

);

alter table category
  add constraint  pk_category_category_idx primary key(category_idx);

INSERT INTO category VALUES(
    SEQ_CATEGORY_CATEGORY_IDX.NEXTVAL,
    2,
    'CHADEMO'
);

 
     


      



-----------------------------------------------------------------------------------------------


CREATE SEQUENCE SEQ_PRODUCT_P_IDX;

CREATE TABLE PRODUCT
(
P_IDX INT,
P_NUMBER INT,
P_NAME VARCHAR2(100),
P_PRICE INT,
P_SALEPRICE INT,
P_IMAGE_S VARCHAR2(100),
P_IMAGE_L VARCHAR2(100),
P_CONTENT VARCHAR2(100),
P_REGDATE VARCHAR2(100),
P_MODIFYDATE VARCHAR2(100),
CATEGORY_IDX INT,
O_IDX INT
);

ALTER TABLE PRODUCT
  ADD CONSTRAINT PK_PRODUCT_P_IDX PRIMARY KEY(P_IDX);

--외래키
ALTER TABLE PRODUCT ADD CONSTRAINT FK_PRODUCT_O_IDX FOREIGN KEY(O_IDX) REFERENCES OWNER(O_IDX) on delete cascade;

ALTER TABLE PRODUCT ADD CONSTRAINT FK_CATEGORY_CATEGORY_IDX FOREIGN KEY(CATEGORY_IDX) REFERENCES CATEGORY(CATEGORY_IDX);

-------------샘플
INSERT INTO PRODUCT VALUES(
    SEQ_PRODUCT_P_IDX.NEXTVAL,
    4,
    '장갑',
    210000,
    190000,
    '모름',
    '232323',
    1,
    21
);


select * from member
select * from product
select * from CATEGORY

*/