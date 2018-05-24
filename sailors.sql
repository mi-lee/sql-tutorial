--now add in the sailors, boats, and reserves
create table sailors (
	sid integer,
	sname varchar2(30),
	rating integer,
	age real,
	primary key (sid)
);

create table boats (
	bid integer,
	bname varchar2(30),
	colour varchar2(30),
	primary key (bid)
);
create table reserves (
	sid integer,
	bid integer,
	day date,
	primary key (sid, bid, day),
	foreign key (sid) references sailors,
	foreign key (bid) references boats
);
insert into sailors values(22, 'dustin',7,45.0);
insert into sailors values(31, 'lubber',8,55.5);
insert into sailors values(58, 'rusty', 10, 35.0);
insert into boats values(101, 'interlake', 'blue');
insert into boats values(102, 'interlake', 'red');
insert into boats values(103, 'clipper', 'green');
insert into boats values(104, 'marien', 'red');
insert into reserves values(22,101,TO_DATE('10-OCT-1998','DD-MM-YYYY'));
insert into reserves values(22,102,TO_DATE('10-OCT-1998','DD-MM-YYYY'));
insert into reserves values(22,103,TO_DATE('8-OCT-1998','DD-MM-YYYY'));
insert into reserves values(22,104,TO_DATE('10-JUL-1998','DD-MM-YYYY'));
insert into reserves values(31,102,TO_DATE('10-NOV-1998','DD-MM-YYYY'));
insert into reserves values(31,103,TO_DATE('6-NOV-1998','DD-MM-YYYY'));
insert into reserves values(31,104,TO_DATE('12-NOV-1998','DD-MM-YYYY'));
insert into reserves values(58,102,TO_DATE('8-NOV-1998','DD-MM-YYYY'));
insert into reserves values(58,103,TO_DATE('12-NOV-1998','DD-MM-YYYY'));
