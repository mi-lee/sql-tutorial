create table aircraft(
	aid number(9,0) primary key,
	aname varchar2(30),
	cruisingrange number(6,0)
	);

create table flights(
	flno number(4,0) primary key,
	origin varchar2(20),
	destination varchar2(20),
	distance number(6,0),
	departs timestamp,
	arrives timestamp,
	price number(7,2)
	);



create table employees(
	eid number(9,0) primary key,
	ename varchar2(30),
	salary number(10,2)
	);
create table certified(
	eid number(9,0),
	aid number(9,0),
	primary key(eid,aid),
	foreign key(eid) references employees,
	foreign key(aid) references aircraft
	);
-- now add in the flights and such
insert into flights values(99,'Los Angeles','Washington D.C.',2308,to_timestamp('2005/04/12 09:30', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 21:40', 'YYYY/MM/DD HH24 MI'),235.98);
insert into flights values(13,'Los Angeles','Chicago',1749,to_timestamp('2005/04/12 08:45', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 20:45', 'YYYY/MM/DD HH24 MI'),220.98);
insert into flights values(346,'Los Angeles','Dallas',1251,to_timestamp('2005/04/12 11:50', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 19:05', 'YYYY/MM/DD HH24 MI'),225.43);
insert into flights values(387,'Los Angeles','Boston',2606,to_timestamp('2005/04/12 07:03', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 17:03', 'YYYY/MM/DD HH24 MI'),261.56);
insert into flights values(7,'Los Angeles','Sydney',7487,to_timestamp('2005/04/12 22:30', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/14 06:10', 'YYYY/MM/DD HH24 MI'),1278.56);
insert into flights values(2,'Los Angeles','Tokyo',5478,to_timestamp('2005/04/12 12:30', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/13 15:55', 'YYYY/MM/DD HH24 MI'),780.99);
insert into flights values(33,'Los Angeles','Honolulu',2551,to_timestamp('2005/04/12 09:15', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 11:15', 'YYYY/MM/DD HH24 MI'),375.23);
insert into flights values(34,'Los Angeles','Honolulu',2551,to_timestamp('2005/04/12 12:45', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 15:18', 'YYYY/MM/DD HH24 MI'),425.98);
insert into flights values(76,'Chicago','Los Angeles',1749,to_timestamp('2005/04/12 08:32', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 10:03', 'YYYY/MM/DD HH24 MI'),220.98);
insert into flights values(68,'Chicago','New York',802,to_timestamp('2005/04/12 09:00', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 12:02', 'YYYY/MM/DD HH24 MI'),202.45);
insert into flights values(7789,'Madison','Detroit',319,to_timestamp('2005/04/12 06:15', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 08:19', 'YYYY/MM/DD HH24 MI'),120.33);
insert into flights values(701,'Detroit','New York',470,to_timestamp('2005/04/12 08:55', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 10:26', 'YYYY/MM/DD HH24 MI'),180.56);
insert into flights values(702,'Madison','New York',789,to_timestamp('2005/04/12 07:05', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 10:12', 'YYYY/MM/DD HH24 MI'),202.34);
insert into flights values(4884,'Madison','Chicago',84,to_timestamp('2005/04/12 22:12', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 23:02', 'YYYY/MM/DD HH24 MI'),112.45);
insert into flights values(2223,'Madison','Pittsburgh',517,to_timestamp('2005/04/12 08:02', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 10:01', 'YYYY/MM/DD HH24 MI'),189.98);
insert into flights values(5694,'Madison','Minneapolis',247,to_timestamp('2005/04/12 08:32', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 09:33', 'YYYY/MM/DD HH24 MI'),120.11);
insert into flights values(304,'Minneapolis','New York',991,to_timestamp('2005/04/12 10:00', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 13:39', 'YYYY/MM/DD HH24 MI'),101.56);
insert into flights values(149,'Pittsburgh','New York',303,to_timestamp('2005/04/12 09:42', 'YYYY/MM/DD HH24 MI'),to_timestamp('2005/04/12 12:09', 'YYYY/MM/DD HH24 MI'),116.50);
insert into aircraft values(1,'Boeing 747-400',8430);
insert into aircraft values(2,'Boeing 737-800',3383);
insert into aircraft values(3,'Airbus A340-300',7120);
insert into aircraft values(4,'British Aerospace Jetstream 41',1502);
insert into aircraft values(5,'Embraer ERJ-145',1530);
insert into aircraft values(6,'SAAB 340',2128);
insert into aircraft values(7,'Piper Archer III',520);
insert into aircraft values(8,'Tupolev 154',4103);
insert into aircraft values(16,'Schwitzer 2-33',30);
insert into aircraft values(9,'Lockheed L1011',6900);
insert into aircraft values(10,'Boeing 757-300',4010);
insert into aircraft values(11,'Boeing 777-300',6441);
insert into aircraft values(12,'Boeing 767-400ER',6475);
insert into aircraft values(13,'Airbus A320',2605);
insert into aircraft values(14,'Airbus A319',1805);
insert into aircraft values(15,'Boeing 727',1504);


insert into employees values(242518965,'James Smith',120433);
insert into employees values(141582651,'Mary Johnson',178345);
insert into employees values(011564812,'John Williams',153972);
insert into employees values(567354612,'Lisa Walker',256481);
insert into employees values(552455318,'Larry West',101745);
insert into employees values(550156548,'Karen Scott',205187);
insert into employees values(390487451,'Lawrence Sperry',212156);
insert into employees values(274878974,'Michael Miller',99890);
insert into employees values(254099823,'Patricia Jones',24450);
insert into employees values(356187925,'Robert Brown',44740);
insert into employees values(355548984,'Angela Martinez',212156 );
insert into employees values(310454876,'Joseph Thompson',212156);
insert into employees values(489456522,'Linda Davis',127984);
insert into employees values(489221823,'Richard Jackson',23980);
insert into employees values(548977562,'William Ward',84476);
insert into employees values(310454877,'Chad Stewart',33546);
insert into employees values(142519864,'Betty Adams',227489);
insert into employees values(269734834,'George Wright',289950);
insert into employees values(287321212,'Michael Miller',48090);
insert into employees values(552455348,'Dorthy Lewis',92013);
insert into employees values(248965255,'Barbara Wilson',43723);
insert into employees values(159542516,'William Moore',48250);
insert into employees values(348121549,'Haywood Kelly',32899);
insert into employees values(090873519,'Elizabeth Taylor',32021);
insert into employees values(486512566,'David Anderson',743001);
insert into employees values(619023588,'Jennifer Thomas',54921);
insert into employees values(015645489,'Donald King',18050);
insert into employees values(556784565,'Mark Young',205187);
insert into employees values(573284895,'Eric Cooper',114323);
insert into employees values(574489456,'William Jones',105743);
insert into employees values(574489457,'Milo Brooks',20);
insert into certified values(567354612,1);
insert into certified values(567354612,2);
insert into certified values(567354612,10);
insert into certified values(567354612,11);
insert into certified values(567354612,12);
insert into certified values(567354612,15);
insert into certified values(567354612,7);
insert into certified values(567354612,9);
insert into certified values(567354612,3);
insert into certified values(567354612,4);
insert into certified values(567354612,5);
insert into certified values(552455318,2);
insert into certified values(552455318,14);
insert into certified values(550156548,1);
insert into certified values(550156548,12);
insert into certified values(390487451,3);
insert into certified values(390487451,13);
insert into certified values(390487451,14);
insert into certified values(274878974,10);
insert into certified values(274878974,12);
insert into certified values(355548984,8);
insert into certified values(355548984,9);
insert into certified values(310454876,8);
insert into certified values(310454876,9);
insert into certified values(548977562,7);
insert into certified values(142519864,1);
insert into certified values(142519864,11);
insert into certified values(142519864,12);
insert into certified values(142519864,10);
insert into certified values(142519864,3);
insert into certified values(142519864,2);
insert into certified values(142519864,13);
insert into certified values(142519864,7);
insert into certified values(269734834,1);
insert into certified values(269734834,2);
insert into certified values(269734834,3);
insert into certified values(269734834,4);
insert into certified values(269734834,5);
insert into certified values(269734834,6);
insert into certified values(269734834,7);
insert into certified values(269734834,8);
insert into certified values(269734834,9);
insert into certified values(269734834,10);
insert into certified values(269734834,11);
insert into certified values(269734834,12);
insert into certified values(269734834,13);
insert into certified values(269734834,14);
insert into certified values(269734834,15);
insert into certified values(552455318,7);
insert into certified values(556784565,5);
insert into certified values(556784565,2);
insert into certified values(556784565,3);
insert into certified values(573284895,3);
insert into certified values(573284895,4);
insert into certified values(573284895,5);
insert into certified values(574489456,8);
insert into certified values(574489456,6);
insert into certified values(574489457,7);
insert into certified values(242518965,2);
insert into certified values(242518965,10);
insert into certified values(141582651,2);
insert into certified values(141582651,10);
insert into certified values(141582651,12);
insert into certified values(011564812,2);
insert into certified values(011564812,10);
insert into certified values(356187925,6);
insert into certified values(159542516,5);
insert into certified values(159542516,7);
insert into certified values(090873519,6);
