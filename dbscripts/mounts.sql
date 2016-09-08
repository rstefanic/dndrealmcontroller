drop table if exists mounts;

create table mounts (id integer auto_increment, item varchar(25), cost integer, speed integer, carry_capacity integer, primary key(id));

insert into mounts (item, cost, speed, carry_capacity) values ('Camel', 50, 50, 480);
insert into mounts (item, cost, speed, carry_capacity) values ('Camel', 8, 40, 420);
insert into mounts (item, cost, speed, carry_capacity) values ('Camel', 200, 40, 1320);
insert into mounts (item, cost, speed, carry_capacity) values ('Camel', 50, 40, 540);
insert into mounts (item, cost, speed, carry_capacity) values ('Camel', 75, 60, 480);
insert into mounts (item, cost, speed, carry_capacity) values ('Camel', 25, 40, 195);
insert into mounts (item, cost, speed, carry_capacity) values ('Camel', 30, 40, 225);
insert into mounts (item, cost, speed, carry_capacity) values ('Camel', 400, 60, 540);