CREATE DATABASE IF NOT EXISTS fourps_db;
drop database fourps_db;
USE fourps_db;

CREATE TABLE IF NOT EXISTS beneficiaries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    barangay VARCHAR(100),
    municipality VARCHAR(100),
    province VARCHAR(100),
    monthly_allowance DECIMAL(10,2)
);

select * from beneficiaries;
