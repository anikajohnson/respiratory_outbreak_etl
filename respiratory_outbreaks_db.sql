-- Database: respiratory_outbreak_db

-- DROP DATABASE respiratory_outbreak_db;

CREATE DATABASE respiratory_outbreak_db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE sars (
id INT PRIMARY KEY,
date TEXT,
country TEXT,
confirmed INT,
deaths INT,
recovered INT
);

CREATE TABLE corona (
id INT PRIMARY KEY,
date TEXT,
country TEXT,
confirmed INT,
deaths INT,
recovered INT
);


-- Joins tables
SELECT sars.* 
FROM sars
INNER JOIN corona
ON sars.country = corona.country;