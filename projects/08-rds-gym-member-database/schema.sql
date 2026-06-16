CREATE DATABASE gym;
USE gym;

CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    membership_type VARCHAR(50),
    join_date DATE
);
