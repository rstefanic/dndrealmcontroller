drop table if exists vehicles;

create table vehicles (id integer auto_increment, item varchar(25), cost integer, speed decimal(4,2), primary key(id));

insert into vehicles (item, cost, speed) values ('Galley', 30000, 4);
insert into vehicles (item, cost, speed) values ('Keelboat', 3000, 1);
insert into vehicles (item, cost, speed) values ('Longship', 10000, 3);
insert into vehicles (item, cost, speed) values ('Rowboat', 50, 1.5);
insert into vehicles (item, cost, speed) values ('Sailing Ship', 10000, 2);
insert into vehicles (item, cost, speed) values ('Warship', 25000, 2.5);

