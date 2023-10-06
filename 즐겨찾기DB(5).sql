/*
--즐겨찾기 시퀀스
create sequence seq_f_charger_f_idx;

--즐겨찾기 테이블 생성
create table f_charger
(
   f_idx       int,                  --즐겨찾기 일련번호
   marker_idx  int,                  --즐겨찾기 마커 일련번호
   csId        int, 	                --충전소 ID
   csNm        varchar2(100),        --충전소명
   addr        varchar2(100),        --충전소주소
   cpTp        int,                  --충전방식
   chargeTp    int,                  --충전기타입
   cpStat      int,                  --충전기상태코드
   statUpdateDatetime varchar2(100), --충전기상태갱신시각
   f_lat       NUMBER(15,8),         --즐겨찾기 충전소 위도
   f_longi     NUMBER(15,8),         --즐겨찾기 충전소 경도
   mem_idx     int                   --회원번호
);

INSERT INTO f_charger VALUES(
    seq_f_charger_f_idx.NEXTVAL,
    1,
    333,
    '석천빌딩',
    '경기도 부천시 길주로 210',
    1,
    1,
    1,
    '오늘',
    37.156156112,
    128.16874153,
    4
);

select * from member

select * from f_charger

--즐겨찾기 테이블 기본키 설정(f_idx)
alter table f_charger
   add constraint pk_f_charger_f_idx primary key(f_idx);

--즐겨찾기 테이블 외래키 설정()
alter table f_charger
  add constraint fk_f_charger_mem_idx foreign key(mem_idx) REFERENCES MEMBER(mem_idx);

*/