/*


create sequence seq_delivery_d_idx;


create table delivery
(
d_idx   int ,      --주문자일련번호
d_name  varchar2(50) not null,  --주문자이름
d_zipcode  varchar2  (100) not null,   --주문자우편번호
d_addr     varchar2  (200) not null,   --주문자주소
d_tel      varchar2  (100) not null,  --주문자연락처
pay_num int                    --결제일련번호(FK)    

)

alter table delivery
    add constraint pk_delivery_d_idx primary key(d_idx);

delete from pay
select * from pay
select * from delivery






*/