--type of tests:
-- singular and generic 

-- singluar tests : specific test for any specific model. put this test1.sql file inside test folder
--generic tests 
----- unique: every value in column of any model is unique
----- not null :every value in column of any model is not null
----- accepted values : every value in column exists in list
----- relationships: each value in column exists in column of another table


-- tests and documentations are used in models so you can write in any yml file where model is defined. but its
-- best practice to refactor big yaml file to small inside folders and right specific test and documentation there
-- start with version : 2 and models and names
-- start with yaml file under raw folder