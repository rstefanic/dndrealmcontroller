drop table if exists alignment;

create table alignment (id integer auto_increment, alignment varchar(25), primary key(id));

INSERT INTO alignment (alignment) VALUES ('Lawful Good');
INSERT INTO alignment (alignment) VALUES ('Neutral Good');
INSERT INTO alignment (alignment) VALUES ('Chaotic Good');
INSERT INTO alignment (alignment) VALUES ('Lawful Neutral');
INSERT INTO alignment (alignment) VALUES ('True Neutral');
INSERT INTO alignment (alignment) VALUES ('Chaotic Neutral');
INSERT INTO alignment (alignment) VALUES ('Lawful Evil');
INSERT INTO alignment (alignment) VALUES ('Neutral Evil');
INSERT INTO alignment (alignment) VALUES ('Chaotic Evil');