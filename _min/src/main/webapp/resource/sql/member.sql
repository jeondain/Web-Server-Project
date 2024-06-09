use WebServerDB;

create table if not exists member (
	id varchar(20) not null,
	name varchar(20),
	email varchar(100),
	password varchar(20),
	phone_num char(11),
	primary key (id)
);

desc member;

select * from member;