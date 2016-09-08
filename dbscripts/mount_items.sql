drop table if exists mount_items;

create table mount_items (id integer auto_increment, item varchar(25), cost decimal(5,2), weight integer, primary key(id));

insert into mount_items (item, cost, weight) values ('Barding', 4, 2);
insert into mount_items (item, cost, weight) values ('Bit and Bridle', 2, 1);
insert into mount_items (item, cost, weight) values ('Carriage', 100, 600);
insert into mount_items (item, cost, weight) values ('Cart', 15, 200);
insert into mount_items (item, cost, weight) values ('Chariot', 250, 100);
insert into mount_items (item, cost, weight) values ('Feed(per day)', .05, 10);
insert into mount_items (item, cost, weight) values ('Exotic Saddle', 60, 40);
insert into mount_items (item, cost, weight) values ('Military Saddle', 20, 30);
insert into mount_items (item, cost, weight) values ('Pack Saddle', 5, 15);
insert into mount_items (item, cost, weight) values ('Riding Saddle', 10, 25);
insert into mount_items (item, cost, weight) values ('Saddlebags', 4, 8);
insert into mount_items (item, cost, weight) values ('Sled', 20, 300);
insert into mount_items (item, cost, weight) values ('Stabling(per day)', .5, 0);
insert into mount_items (item, cost, weight) values ('Wagon', 35, 400);