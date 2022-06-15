create database IDBCBank;
use IDBCBank;
show tables;

select * from customer_Info;
select * from bank_account;
select * from bank_transaction;

create table customer_Info(
customerId int primary key ,
customerF_Name char (10) not null,
customerL_Name char (10) not null,
mobileNo long not null,
email varchar(20) not null
);

insert into customer_Info  value (23,'Rakesh','Khatri',9867542746,'rakesh20@gmail.com');
insert into customer_Info  value (78,'Anupam','Mittal',8857392609,'anupam39@gmail.com');
insert into customer_Info value (56,'Rahul','Thakur',8797348500,'rahul85@gmail.com');
insert into customer_Info value (67,'Nakul','Kale',9063823400,'nakul75@gmail.com');

create table bank_account(
accNumber char(12) primary key,
balance int not null,
acc_type varchar (50) not null,
acc_status char(10) default 'Active',
customerId int not null,
foreign key(customerId) references customer_Info(customerId) on update cascade on delete cascade
);

insert into bank_account (accNumber,balance,acc_type,customerId) value ('IDBC078946',50000,'Pay',23);
insert into bank_account (accNumber,balance,acc_type,customerId) value ('IDBC878760',70000,'Saving',78);
insert into bank_account (accNumber,balance,acc_type,customerId) value ('IDBC974907',7000,'Pay',56);
insert into bank_account (accNumber,balance,acc_type,customerId) value ('IDBC194989',20000,'Saving',67);

create table bank_transaction(
transactionId int primary key auto_increment,
transaction_date char (10) not null,
trans_type char (10) not null,
trans_amount int not null,
customerId int not null,
foreign key(customerId) references customer_Info(customerId) on update cascade on delete cascade
);

ALTER TABLE bank_transaction AUTO_INCREMENT=101;
insert into bank_transaction (transaction_date,trans_type,trans_amount,customerId) value ('16-05-2021','withdrawal',6000,23);
insert into bank_transaction (transaction_date,trans_type,trans_amount,customerId) value ('3-05-2021','Diposite',20000,78);
insert into bank_transaction (transaction_date,trans_type,trans_amount,customerId) value ('9-05-2021','diposite',1000,56);
insert into bank_transaction (transaction_date,trans_type,trans_amount,customerId) value ('22-05-2021','withdrawal',9000,67);


