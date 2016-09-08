drop table if exists food_drink;

create table food_drink (id integer auto_increment, item varchar(25), cost decimal(4,2), primary key(id));

insert into food_drink (item, cost) values ('Gallon Ale', .02);
insert into food_drink (item, cost) values ('Mug Ale', .04);
insert into food_drink (item, cost) values ('Banquet(per person)', 10);
insert into food_drink (item, cost) values ('Bread, Loaf', .2);
insert into food_drink (item, cost) values ('Chesse, Hunk', .1);
insert into food_drink (item, cost) values ('Inn Stay(per day) Squalid', .7);
insert into food_drink (item, cost) values ('Inn Stay(per day) Poor', .1);
insert into food_drink (item, cost) values ('Inn Stay(per day) Modest', .5);
insert into food_drink (item, cost) values ('Inn Stay(per day) Comfortable', .8);
insert into food_drink (item, cost) values ('Inn Stay(per day) Wealthy', 2);
insert into food_drink (item, cost) values ('Inn Stay(per day) Aristocratic', 4);
insert into food_drink (item, cost) values ('Meals(per day) Squalid', .3);
insert into food_drink (item, cost) values ('Meals(per day) Poor', .6);
insert into food_drink (item, cost) values ('Meals(per day) Modest', .3);
insert into food_drink (item, cost) values ('Meals(per day) Comfortable', .5);
insert into food_drink (item, cost) values ('Meals(per day) Wealthy', .8);
insert into food_drink (item, cost) values ('Meals(per day) Aristocratic', 2);
insert into food_drink (item, cost) values ('Meat, Chunck', 3);
insert into food_drink (item, cost) values ('Common(pitcher) wine', .02);
insert into food_drink (item, cost) values ('Fine(bottle) wine', 10);
