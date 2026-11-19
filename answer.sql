-- Week 8 Assignment: MySQL Database Backup and Restore

-- QUESTION 1: Complete Backup of sales database
-- mysqldump exports structure + data. -u root = user, -p = ask for password
mysqldump -u root -p sales > sales_backup.sql;
-- Regular backups protect against accidental delete, corruption, and allow recovery before major changes.

-- QUESTION 2: Backup All Databases
-- --all-databases exports every database for migration
mysqldump -u root -p --all-databases > all_databases_backup.sql;
-- Important before migration so no database, user or privilege is lost.

-- QUESTION 3: Data-Only Backup
-- --no-create-info exports only data, no CREATE TABLE statements
mysqldump -u root -p --no-create-info sales > sales_data_only_backup.sql;
-- Useful when you only need to restore data into an existing structure, or for migration / testing.