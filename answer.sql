-- Week 8 Assignment: MySQL Database Backup and Restore
-- Using mysqldump to back up the sales database

-- QUESTION 1: Creating a Complete Database Backup
-- This command creates a complete backup of the sales database.
-- mysqldump = MySQL backup tool
-- -u root = login as user root
-- -p = prompt for password
-- sales = database name to back up
-- > sales_backup.sql = save output into this file
mysqldump -u root -p sales > sales_backup.sql;
-- Why regular backups are important:
-- They protect against accidental deletion, corruption, hardware failure,
-- and allow us to restore the database before/after major changes.
-- This is essential for disaster recovery.

-- QUESTION 2: Backing Up All Databases
-- This command backs up EVERY database on the MySQL server.
-- --all-databases = export all databases, not just one
-- -u root = login as user root
-- -p = prompt for password
-- > all_databases_backup.sql = save output into this file
mysqldump -u root -p --all-databases > all_databases_backup.sql;
-- Why backing up all databases is important before migration:
-- Before moving to a new server, we must not lose any database,
-- user accounts, or permissions. A full backup ensures everything
-- can be restored on the new server without missing data.

-- QUESTION 3: Data-Only Backup
-- This command creates a backup with ONLY data, no table structure.
-- --no-create-info = do NOT include CREATE TABLE statements, only INSERT data
-- Useful when the tables already exist and you only need to restore the data,
-- for example for testing or moving data into an existing database.
mysqldump -u root -p --no-create-info sales > sales_data_only_backup.sql;
-- This backup is smaller and is used when we only need the records,
-- not the database structure.
