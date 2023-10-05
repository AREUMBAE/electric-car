/*

create sequence seq_pay_pay_idx

create table pay
(
    pay_idx int,                    --결제일련번호 
    pay_num int,                    --결제번호    
    
    pay_count int,                  --결제상품갯수                  
    pay_price int,                  --상품 가격
    pay_type varchar2(100),         --결제 방식
    pay_regdate varchar2(100),      --판매 일자
    p_idx int,                      --상품일련번호(FK)
    mem_idx int                     --회원번호(FK)
    item_name                       --상품이름
)



--기본키 
alter table pay
    add constraint pk_pay_pay_idx primary key(pay_idx);

--외래키
alter table pay
    add constraint fk_p_idx foreign key(p_idx)
    references product(p_idx)
    on delete cascade;

--외래키
alter table pay
    add constraint fk_mem_idx foreign key(mem_idx) 
    references member(mem_idx)
    on delete cascade;


select*from product


alter table pay
    add item_name varchar2(100);

select * from pay

*/