/*

create sequence seq_admin_admin_idx

create table admin
(
    admin_idx     int,                        --회원번호
    admin_name    varchar2(100) not null,     --회원이름
    admin_id      varchar2(100) not null,     --회원아이디
    admin_pwd     varchar2(100) not null,     --회원비밀번호
    admin_ip      varchar2(100) not null      --아이피
    
)

--기본키
alter table admin
    add constraint pk_admin_admin_idx primary key(admin_idx);

--유니크 제약
alter table admin
    add constraint unique_admin_admin_id unique(admin_id);

--sample data
insert into admin values( seq_admin_admin_idx.nextVal,
                            '1234',
                            '1234',
                            '1234',
                            '192.168.0.23'
                            );





*/