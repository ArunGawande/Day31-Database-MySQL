create database addressBookService;
show databases;
use addressBookService;

create table addressBook (firstname varchar(20),lastname varchar(20),address varchar(20),
city varchar(20),state varchar(20),zip varchar(6),phone varchar(12),email varchar(20));
desc addressBook;

insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Arun','Gawande','wathoda','Warud',
'Maharashtra','444906','9561864842','Arung@gmail.com'),('Karan','Kale','Katol','Warud','Maharashtra','444907','9561864100','KaranK@gmail.com')
,('Arjun','Kale','Jalalkheda','Warud','Maharashtra','444908','7972121283','ArjunK@gmail.com');
select *from addressBook;

update addressBook set phone = '9561864843' where firstname = 'Arun';

delete from addressBook where firstname = 'Karan';

select *from addressBook where city ='Warud';

select count(*) from addressBook where state = 'Maharasgtra';

select *from addressBook where state = 'Maharashtra' order by firstname;

update addressBook set bookname='Book1' where firstname = 'Arun';
update addressBook set bookname='Book2' where firstname = 'Karan';
update addressBook set bookname='Book3' where firstname = 'Arjun';
update addressBook set booktype='Family' where firstname = 'Arun';
update addressBook set booktype='Friends' where firstname = 'Karan';
update addressBook set booktype='Profession' where firstname = 'Arjun';

select booktype, count(*) from addressBook group by booktype;