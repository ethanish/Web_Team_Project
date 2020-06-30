drop table account;

CREATE TABLE account(
num int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
id char(10) NOT NULL UNIQUE,
password char(10) NOT NULL,
tel char(15),
name char(10),
birth_d date
);

insert into account(id,password,tel,name,birth_d) values("his","his","01012345678","È²ÀÎ½Â","1994-04-05")