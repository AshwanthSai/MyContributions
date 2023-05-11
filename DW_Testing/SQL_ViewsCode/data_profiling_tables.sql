#Data Profiling - Helps understanding the type of data in each table
#We will profile the count in each table and also the type of profiling information in each schema. 
#Counting Records of SQL 
CREATE VIEW data_profiling_tables AS
SELECT table_name, table_rows
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'auto_schema2';