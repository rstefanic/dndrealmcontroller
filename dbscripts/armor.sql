drop table if exists armor;
create table armor (id integer, armor varchar(25), cost integer, armor_class integer, strength integer, stealth_disadvantage boolean, weight integer, primary key(id));

Insert into armor values (0, 'padded', 5, 11, 0, TRUE, 8);
Insert into armor values (1, 'Leather', 10, 11, 0, False, 10);
Insert into armor values (2, 'Studded leather', 45, 12, 0, False, 13);
Insert into armor values (100, 'Hide', 10, 12, 0, False, 12);
Insert into armor values (101, 'Chain Shirt', 50, 13, 0, False, 20);
Insert into armor values (102, 'Scale mail', 50, 14, 0, TRUE, 45);
Insert into armor values (103, 'Breastplate', 400, 14, 0, False, 20);
Insert into armor values (104, 'Half Plate', 750, 15, 0, TRUE, 40);
Insert into armor values (200, 'Ring mail', 30, 14, 0, TRUE, 40);
Insert into armor values (201, 'Chain mail', 75, 16, 13, TRUE, 55);
Insert into armor values (202, 'Splint', 200, 17, 15, TRUE, 60);
Insert into armor values (203, 'Plate', 1500, 18, 15, TRUE, 65);
Insert into armor values (300, 'Shield', 10, 2, 0, False, 6);
