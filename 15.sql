syntax for CREATING database:
CREATE DATABASE database_name;

CREATE DATABASE aug_20;

use aug_20

/*sytax for creipl_teamsateing table

CREATE TABLE table_name(column_name1 datatype,column_name2 datatype,column_name3 datatype);*/

CREATE TABLE ipl_teams(id int, team_name varchar(50), venue varchar(20), opposition varchar(30), matchdays varchar(20));
/*syntax to fetch the data
select * from table_name; (*) indicates all column from table*/
SELECT * FROM ipl_teams;
SELECT id,venue from ipl_teams;



/*syntax for inserting th data into table
INSERT INTO table_name VALUES(data1,data2,data3);*/
INSERT INTO ipl_teams VALUES(1,'RCB','Bengaluru','Mumbai','Saturday');
INSERT INTO ipl_teams VALUES(2,'Chennai','Kolkatta','Delhi','Sunday');

/*Syntax for adding new column to existing table
ALTER TABLE table_name ADD COLUMN column_name datatype*/
ALTER TABLE ipl_teams ADD COLUMN no_of_players int;

/*syatax for drop column from existing table
ALTER TABLE table_name DROP column_name;*/
ALTER TABLE ipl_teams DROP COLUMN no_of_players;

/*syntax for renaming the column name
ALTER TABLE table_name RENAMEcolumn_name to new_column_name*/

ALTER TABLE ipl_teams RENAME COLUMN id to slno;
SELECT * FROM ipl_teams;

/*syntax for renaming the table name
rename table oldtablename to newtablename;*/
RENAME TABLE ipl_teams to ipl;
SELECT * FROM ipl;

/*syntax for changing the datatype for existing column
ALTER TABLE table_name MODIFY COLUMN column_name newdatatype;*/
ALTER TABLE ipl MODIFY COLUMN slno bigint;

desc ipl;

ALTER TABLE ipl DROP COLUMN place;

ALTER TABLE ipl ADD COLUMN place varchar(20) default 'India';
SELECT * FROM ipl;
drop table ipl;

CREATE TABLE airport_details(id int, varchar(20), contact_no bigint, flight_no varchar(30), departure_date date, take_off time, created_at timestamp, created_by varchar(20) default 'xworkz');
SELECT * FROM airport_details;

INSERT INTO airport_details(id,passenger_name,contact_no,flight_no,departure_date,take_off, created_at)
VALUES(1,'xworkzODC','634877','INDI7636UGH', current_date(), current_time(), now());

