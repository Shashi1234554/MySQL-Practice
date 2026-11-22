DROP DATABASE IF EXISTS DDL_Commands;
CREATE DATABASE DDL_Commands;
USE DDL_Commands;
CREATE TABLE my_table(
id int,
name varchar(200) NOT NULL,
age int NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
insert into my_table(id,name,age)
VALUES
(1,'ajay',45),
(2,'vijay',28),
(3,'sanjay',26);
CREATE TABLE  my_table2(
id int,
description varchar(200) NOT NULL
);
INSERT INTO my_table2 (id,description)
VALUES
(1,'Item 1'),
(2,'Item 2'),
(3,'Item 3');
select * from my_table;
select * from my_table2;
-- 1 Rename column name  to full_name.
ALTER TABLE my_table
RENAME COLUMN name to full_name;
-- 2 Change the datatype of age from INT to BIGINT.
ALTER TABLE my_table
MODIFY age BIGINT NOT NULL;
-- 3 Add a new column email of VARCHAR(100).
ALTER TABLE my_table
ADD COLUMN email VARCHAR(100);
-- 4 Add middle_name after the full_name column.
ALTER TABLE my_table
ADD Column middle_name VARCHAR(50) AFTER full_name;
-- 5 Add EMP_Rank as the first column.
ALTER TABLE my_table 
ADD Column EMP_Rank INT FIRST;
-- 6 Change created_at from TIMESTAMP to DATETIME.
ALTER TABLE my_table
MODIFY created_at DATETIME;
-- 7 Change description from VARCHAR(255) to TEXT in my_table2.
ALTER TABLE my_table2
MODIFY description text;
-- 8 Make the name column nullable.
ALTER TABLE my_table
MODIFY COLUMN full_name VARCHAR(200) NULL;
-- 9 Add PRIMARY KEY constraint on it.
ALTER TABLE my_table
add primary key(id);
-- 10 Drop the middle_name column.
ALTER TABLE my_table
DROP COLUMN middle_name;
-- 11 Rename email_address back to email.
ALTER TABLE my_table
RENAME COLUMN email TO email_add;
-- 12 Allow NULL values in the age column.
 ALTER TABLE my_table
 Modify age bigint null;
 -- 13 Add FOREIGN KEY on id in my_table2 referencing my_table(id).
 ALTER TABLE my_table2
ADD CONSTRAINT fk_id
FOREIGN KEY (id)
REFERENCES my_table(id);
-- 14 Remove the FOREIGN KEY constraint from my_table2.
ALTER TABLE my_table2
DROP FOREIGN KEY fk_id;
-- 15 Change the maximum length of name to 200 characters.
ALTER TABLE my_table
MODIFY full_name varchar(200) not null;
-- DROP Commands Questions
-- 16 Write a SQL query to drop the my_table2 from the database.
Drop table my_table2;
-- 17 Write a SQL query to drop the foreign key constraint fk_id in my_table2.
ALTER TABLE my_table2 drop foreign key fk_id;
-- 18 SQL query to drop the PRIMARY KEY constraint on the id column in my_table.
Alter TABLE my_table
drop Primary Key;
-- 19 SQL query to drop a column named age from the my_table.
Alter table my_table
Drop Column age;
-- 20 SQL query to drop the DDL_Commands database.
Drop Database ddl_commands;
 
 
 
 














