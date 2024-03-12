-- in yaml file, either you define source or models
-- -name and inside name you can include test and description
-- find all config properties in https://docs.getdbt.com/reference/model-properties
-- once its defined as source or models, first thing you have to give it name . 
-- just press dash (-) and press space and it start select from dropdown

--how to write sources yml file 
--version: 2
--sources:
---name ( this is name of first source, it includes your database, schema and tables and columns)
--once each table name is defined, under same indentation, start adding more attributes like freshness and loadedatfield
--once name is defined, put loadedat and freshness attribute under name in same indentation. start typing loaded and freshness

-- supposed you have field loadedat in source . once you add some incremental delta load, it checks the time from there and compares with current time

