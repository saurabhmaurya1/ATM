create database AtmDatabase;
use AtmDatabase;
create table admintable (customerid integer not null, acc_no bigint not null, account_type varchar(255), branchid integer, card_no varchar(255), check_book varchar(255), dob date, fathers_name varchar(255), full_name varchar(255), gender varchar(255), landline integer, mobile_number varchar(255), opening_balance integer not null, pannumber varchar(255), pin integer, permanent_address varchar(255), present_address varchar(255), primary key (customerid));
create table bank_transaction (transactionid integer not null auto_increment, balance integer not null, customerid integer not null, transaction_amount integer not null, transaction_date datetime DEFAULT CURRENT_TIMESTAMP, transaction_type varchar(255), primary key (transactionid));
create table branch_details (branchid integer not null auto_increment, branch_name varchar(255) not null, state varchar(255) not null, primary key (branchid));
create table cheque (chequeid integer not null, cheque_amt integer not null, cheque_date datetime DEFAULT CURRENT_TIMESTAMP, chequeto varchar(255), customerid integer not null, customeridto integer not null, checkred boolean DEFAULT FALSE, primary key (chequeid));
create table customer_account_details (customerid integer not null, acc_no bigint not null, account_type varchar(255), branchid integer, card_no varchar(255), check_book varchar(255), dob date, fathers_name varchar(255), full_name varchar(255), gender varchar(255), landline integer, mobile_number varchar(255), opening_balance integer not null, pannumber varchar(255), pin int DEFAULT 0000, permanent_address varchar(255), present_address varchar(255), primary key (customerid));
create table login_credentials (customerid integer not null, password varchar(255), userid varchar(255) not null, primary key (customerid));


INSERT INTO branch_details(branch_name,state) VALUES('Goverdhan Villas','Rajasthan'),
('Surajpole Udaipur','Rajashan'),
('Sahijpur Bogha Ahmedabad','Gujarat'),
('Sahkari Jin Road Himmatnagar','Gujarat'),
('Janakpuri New Delhi','Delhi'),
('Panaji City','Goa'),
('Hemmigepuragollahalli','Kerala'),
('Jawahar Ngr','Jammu & Kashmir'),
('Andheri West GreatedBombay','Maharashtra'),
('DhabWastiRam Amritsar','Punjab'),
(' Aravindanagar Mysore','Karnataka'),
('P N Palayam Branch Coimbatore','Tamil Nadu'),
('Jhakri','Himachal Pradesh'),
('Akashdeep Market Ganga','Arunachal Pradesh'),
('Sakri','Chhattisgarh');
select * from branch_details;

INSERT INTO customer_account_details (full_name,fathers_name,dob,gender,permanent_address,present_address,pannumber,mobile_number,landline,account_type, opening_balance ,customerid,acc_no,card_no,pin,check_book,branchid) VALUES
('MUSKAN PANJWANI','RAJKUMAR PANJWANI','2000-09-25','FEMALE','1/143 GOVERDHAN VILLAS SECTOR-14','1/143 GOVERDHAN VILLAS SECTOR-14','GLBPP5798C',7737292960,NULL,'SAVINGS',45000,22551,20044439360,3345875484563264,2528,'YES',1),
('DIKSHANT AJARIYA','NANDLAL AJARIYA','1999-08-01','MALE','672-SUNDARWAS TITARDI','672-SUNDARWAS TITARDI','GLBPA4477C',9530403338,NULL,'CURRENT',80000,22552,20044439361,3345875484562528,2801,'YES',1),
('SANSKRUTI BHATNAGAR','MANOHAR BHATNAGAR','1997-07-28','FEMALE','679-Sarpanch Vasti,Patas Road','679-Sarpanch Vasti,Patas Road','APRN2675K',9954362145,26036669,'CURRENT',25000,22553,20044439362,334587548556764,5486,'NO',2),
('MAYURI MEHTA','MEHTA SHANTARAM','2007-10-24','FEMALE','47-Prakash Apartment Gopalwadi Goa','47-Prakash Apartment Gopalwadi Goa','NSTR6857H',7854632156,24596325,'SAVINGS',3400,22554,20044439363,3365654535629546,3365,'YES',6),
('NIVANGUNE SANIKA KODLI','DNYANDEV KODLI','1982-11-03','MALE','Vishnu Sadan Baner Pune','Vishnu Sadan Baner Pune.','LDHX2545L',9778535825,NULL,'CURRENT',10000,22555,20044439364,5652622536334296,2564,'YES',9),
('SHAIKH RAMIJA HAFIZ','AYAN HAFIZ','1998-01-20','MALE','88-Gomati Sadan Road Delhi','88-Gomati Sadan Road Delhi','ANVI9636V',9658732468,26066959,'SAVINGS',5000,22556,20044439365,6236548525681503,2536,'NO',5),
('LAXMAN SUTHAR','NILAM SUTHAR','1994-08-07','MALE','Raj Apartment Sakri','Raj Apartment Sakri','WICT7265P',7603846218,NULL,'SAVINGS',44000,22557,20044439366,6497035614623256,4586,'YES',5),
('SHAIKH SAIMA TAIYYAB','RAGHAV TAIYYAB','2002-03-30','FEMALE','07-vishva Vasti Road Vasmat','07-vishva Vasti Road Vasmat','ERHT8269O',9960350480,26896326,'SAVINGS',10500,22558,20044439367,5632987202350025,8665,'NO',4),
('ANIL JADHAV','ANKIT JADHAV','1992-04-12','MALE','145-Kuvar pales','145-Kuvar pales','CZBY1268Y',9632718209,NULL,'CURRENT',24800,22559,20044439368,7851365045204582,2458,'YES',2),
('YASH SANTOSH','LALIT SANTOSH','1973-07-28','MALE','24-Anand Nivas Nhare','244-Nhare punjab','ZBBV6675F',7526040404,28396814,'SAVINGS',8500,22560,20044439369,3654659845631524,4123,'YES',10),
('VIDYA SHARMA','DILIP SHARMA','2001-12-23','FEMALE','Ravivar karnataka','1/178-Amravati karnataka','VNNF9513G',9906060503,26845328,'SAVINGS',9000,22561,20044439370,3562002514033652,4321,'YES',11),
('SAMRUDDHI MILLS','MANOHAR MILLS','2000-02-24','FEMALE','Shri-Krushna Nivas Tamil nadu','Shri-Krushna Nivas Tamil nadu','BBGF6254C',9865498654,NULL,'CURRENT',15000,22562,20044439371,8796254636525423,8756,'YES',12),
('RIHAN HAFIZ','SHAIKH SHAHID HAFIZ','1995-10-03','MALE','Purva Socity Nanded','77-Purva Society','HNVK7586H',8758461243,NULL,'CURRENT',20500,22563,20044439372,8596365478528758,4545,'NO',14),
('VAIBHAV JADHAV','JADHAV JADHAV','1996-08-15','MALE','Amora Town City J&K','Amora Town City J&K','YHMC8341J',8965443285,26845963,'SAVINGS',2000,22564,20044439373,3645654245822564,5698,'YES',8),
('SAI SANTOSH','SHIRKE SANTOSH','1997-11-11','FEMALE','SoniSadan Near Garden Delhi','SoniSadan Near Garden Delhi','DGCD6325L',9987564821,28396816,'CURRENT',55000,22565,20044439374,2015365286942632,4587,'YES',5),
('ADITYA SOMNATH','LOVE SOMNATH','1998-03-08','MALE','Gomati Building Nagar Road','Gomati Building Nagar Road','TCNV8546R',9658754632,26366963,'CURRENT',10000,22566,20044439375,3356452375846589,5135,'NO',8),
('SARTHAK PANDURANG','NIVAN PANDURANG','2002-05-10','MALE','25-Vista Nagar KERALA','25-Vista Nagar KERALA','CVMV2345B',9689568998,28456330,'SAVINGS',25000,22567,20044439376,3654365425813652,6352,'YES',7),
('PRATIKSHA JADHAV','SUBHASH JADHAV','1990-06-17','FEMALE','SaiKrupa Sadan','SaiKrupa Sadan','JAWQ8423N',9765458556,26396817,'CURRENT',2200,22568,20044439377,2536365275842365,4589,'YES',15),
('ADITYA RAM GOPAL','SARVADE RAM GOPAL','1987-04-13','MALE','8/55 Ashte Coloney','1/111-Ashte Coloney','DHNV4521R',9156484763,26036664,'SAVINGS',5000,22569,20044439378,3569125436547584,1258,'YES',3),
('AKSHATA BHONGALE','SACHIN BHONGALE','1985-03-13','MALE','252-Apte Society','Samadhan Niwas','SKUR8726J',9483525965,26845961,'SAVINGS',1500,22570,20044439379,3652341287954569,3652,'YES',4);											
SELECT * FROM customer_account_details;

INSERT INTO admintable (full_name,fathers_name,dob,gender,permanent_address,present_address,pannumber,mobile_number,landline,account_type, opening_balance ,customerid,acc_no,card_no,pin,check_book,branchid) VALUES
('MUSKAN PANJWANI','RAJKUMAR PANJWANI','2000-09-25','FEMALE','1/143 GOVERDHAN VILLAS SECTOR-14','1/143 GOVERDHAN VILLAS SECTOR-14','GLBPP5798C',7737292960,NULL,'SAVINGS',45000,22551,20044439360,3345875484563264,2528,'YES',1),
('DIKSHANT AJARIYA','NANDLAL AJARIYA','1999-08-01','MALE','672-SUNDARWAS TITARDI','672-SUNDARWAS TITARDI','GLBPA4477C',9530403338,NULL,'CURRENT',80000,22552,20044439361,3345875484562528,2801,'YES',1);
select * from admintable;

INSERT INTO bank_transaction (transaction_type,transaction_amount,balance,customerid) VALUES('create',45000,45000,22551),
('create',80000,80000,22552),
('create',25000,25000,22553),
('create',3400,3400,22554),
('create',10000,10000,22555),
('create',5000,5000,22556),
('create',10800,44000,22557),
('create',10500,10500,22558),
('create',24800,24800,22559),
('create',8500,8500,22560),
('create',9000,9000,22561),
('create',15000,15000,22562),
('create',20500,20500,22563),
('create',2000,2000,22564),
('create',55000,55000,22565),
('create',10000,10000,22566),
('create',25000,25000,22567),
('create',2200,2200,22568),
('create',5000,5000,22569),
('create',1500,1500,22570);
select * from bank_transaction;

INSERT INTO login_credentials(userid,password,customerid  ) VALUES('CUST22551','qwerty123',22551),
('CUST22552','qwerty123',22552),
('CUST22553','qwerty123',22553),
('CUST22554','qwerty123',22554),
('CUST22555','qwerty123',22555),
('CUST22556','qwerty123',22556),
('CUST22557','qwerty123',22557),
('CUST22558','qwerty123',22558),
('CUST22559','qwerty123',22559),
('CUST22560','qwerty123',22560),
('CUST22561','qwerty123',22561),
('CUST22562','qwerty123',22562),
('CUST22563','qwerty123',22563),
('CUST22564','qwerty123',22564),
('CUST22565','qwerty123',22565),
('CUST22566','qwerty123',22566),
('CUST22567','qwerty123',22567),
('CUST22568','qwerty123',22568),
('CUST22569','qwerty123',22569),
('CUST22570','qwerty123',22570);
select * from login_credentials;

INSERT INTO cheque(chequeto,customeridto,chequeid,cheque_amt,customerid) VALUES('SANSKRUTI BHATNAGAR',22553,100001,45000,22551),
('MAYURI MEHTA',22554,100585,5400,22551),
('DIKSHANT AJARIYA',22552,100575,25000,22551),
('VAIBHAV JADHAV',22564,344400,3400,22551);
select * from cheque;
