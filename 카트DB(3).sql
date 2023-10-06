/*

--장바구니 일련번호
create sequence seq_cart_cart_idx;

--장바구니 테이블
create table cart
(
  cart_idx  int,
  cart_num  int  not null,
  p_idx  int,
  mem_idx int
);

alter table cart
  add constraint pk_cart_cart_idx primary key(cart_idx);

--상품테이블(product)의 idx와 p_idx간의 외래키 설정
alter table cart
  add constraint fk_cart_p_idx foreign key(p_idx) 
                               references product(p_idx)
                               on delete cascade;                 
      --on delete cascade      
       --parent 삭제시 참조하는 child목록도 같이 삭제

alter table cart
  add constraint fk_cart_mem_idx foreign key(mem_idx) 
                               references member(mem_idx)
                               on delete cascade;


select * from product
select * from member


insert into cart values(seq_cart_cart_idx.nextVal,1,1,1);


select * from cart_view

select * from all_tables

commit
select *from owner

-- Join을 통해서 조회정보를 추출
create or replace view cart_view
as
	select
	   p.p_idx,cart_idx, p_number,p_name,p_price,p_saleprice,
	   cart_num, cart_num* p_saleprice amount, mem_idx
	from product p inner join  cart c on p.p_idx = c.p_idx  

select * from cart_view where mem_idx=22

select * from BOARD

--장바구니 상품의 총계
select nvl(sum(amount),0) from cart_view where mem_idx=21













*/