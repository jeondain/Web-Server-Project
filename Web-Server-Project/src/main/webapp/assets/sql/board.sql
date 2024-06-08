CREATE TABLE board (
       num int not null auto_increment,
       id varchar(10) not null,
       name varchar(10) not null,
       subject varchar(100) not null,
       content text not null,
       regist_day varchar(30),
       hit int,
       ip varchar(20),
       PRIMARY KEY (num)
)default CHARSET=utf8;

select * from board;

desc board;

INSERT INTO board (id, name, subject, content, regist_day, hit, ip)
VALUES ('testID', '테스트', 'Test Subject', '문의 내용 테스트', '2024/05/06(00:00:00)', 0, '127.0.0.1');

TRUNCATE TABLE board;

ALTER TABLE board
ADD COLUMN response TEXT;