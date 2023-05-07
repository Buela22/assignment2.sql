CREATE TABLE doctor(
    id int primary key,name varchar(60)not null,specialization varchar(20) not null,
    adress varchar(40),phone varchar(20),email varchar(30));

create table appointments(
    id int primary key,doctor_id int not null,
    patient_id int not null,appointment_date datetime not null,
    appointment_type varchar(30)not null,notes text,foreign key(doctor_id)references patient(id));

create table reviews(
    id int primaary key,patient_id int not null,
    doctor_id int not null,
    rating int not null,
    comment text,
    review_date datetime not null,
    foreign key(patient_id),references (patient_id),foreign key (doctor_id) references doctor(id));



------------------------------------------------------------------------------------------------

create table contact(
    id int primary key,
    email varchar(30)not null,fname varchar(40)not null,lname varchar(40)not null,
    company varchar(50)not null,active_flag boolean not null,opt_out boolean not null);

insert into contact (id,email,fname,iname,company,active_flag,opt_out)
values(098,'abc123@gmail.com','anusha,'semm','zzz',2,2),
(123,'def123@gmail.com','amulya,'senth','aaa',1,0),
(456,'ghi123@gmail.com','ankitha,'manu','bbb',0,2),
(789,'jkl123@gmail.com','amisha,'malik','ccc',1,1);

1.select * columns from the contact table where the active flag = 1;
2.update contact set active_flag = 0 ehere opt_out = 1;
3.delete from contact where company='abc';
4.insert into  contact(id,email,fname,lname,company,active_flag,opt_out)values
(666,'rrr122@gmail.com','asha','nnn',1,1);
5.select distinct company from contact;
6.update contact set fname='bumra' where fname='asha';




-----------------------------------------------------------------------------------------------


select c.cust_name,c.city as customer_city,c.grade,s.name as salesman,s.city
as salesman_city from customer c 
join salesman s on c.salesman_id=s.salesman_id where c.grade < 100 order by c.customer_id asc;