USE employees;
CREATE TABLE employee_per (
    e_id int(10) unsigned NOT NULL,
    address varchar(60) DEFAULT NULL,
    phone int(11) DEFAULT NULL,
    p_email varchar(60) DEFAULT NULL,
    birth_date date DEFAULT NULL,
    sex enum('M','F') DEFAULT NULL,
    m_status enum('Y','N') DEFAULT NULL,
    s_name varchar(60) DEFAULT NULL,
    children int(11) DEFAULT NULL,
    PRIMARY KEY (e_id)
);
INSERT INTO employee_per
(e_id, address, phone, p_email, birth_date, sex, m_status, s_name, children)
VALUES
(11, 'Address 11', 11111, 'emp11@mail.com', '1957-11-04', 'M', 'Y', 'Spouse11', 4),
(16, 'Address 16', 161616, 'emp16@mail.com', '1964-03-06', 'F', 'Y', 'Spouse16', 2),
(21, 'Address 21', 212121, 'emp21@mail.com', '1964-06-13', 'M', 'Y', 'Spouse21', 2),
(14, 'Address 14', 141414, 'emp14@mail.com', '1965-04-28', 'F', 'N', NULL, NULL),
(15, 'Address 15', 151515, 'emp15@mail.com', '1966-06-23', 'M', 'Y', 'Spouse15', 3),
(7,  'Address 7',  777777, 'emp7@mail.com',  '1966-08-20', 'F', 'Y', 'Spouse7', 3),
(10, 'Address 10', 101010, 'emp10@mail.com', '1967-07-06', 'M', 'N', NULL, NULL),
(20, 'Address 20', 202020, 'emp20@mail.com', '1968-01-25', 'F', 'N', NULL, NULL),
(12, 'Address 12', 121212, 'emp12@mail.com', '1968-02-15', 'M', 'Y', 'Spouse12', 3),
(2,  'Address 2',  222222, 'emp2@mail.com',  '1968-04-02', 'F', 'Y', 'Spouse2', 3),
(9,  'Address 9',  999999, 'emp9@mail.com',  '1968-05-19', 'M', 'Y', 'Spouse9', 1),
(13, 'Address 13', 131313, 'emp13@mail.com','1968-09-03', 'F', 'Y', 'Spouse13', 2),
(3,  'Address 3',  333333, 'emp3@mail.com',  '1968-09-22', 'M', 'Y', 'Spouse3', 2),
(6,  'Address 6',  666666, 'killeratlarge@elmmail.com', '1969-12-31', 'M', 'N', NULL, NULL),
(17, 'Address 17', 171717, 'emp17@mail.com','1970-04-18', 'F', 'Y', 'Spouse17', 1),
(1,  'Address 1',  111111, 'emp1@mail.com',  '1972-03-16', 'M', 'N', NULL, NULL),
(4,  'Address 4',  444444, 'emp4@mail.com',  '1972-08-09', 'F', 'N', NULL, NULL),
(19, 'Address 19', 191919, 'emp19@mail.com','1973-01-20', 'F', 'Y', 'Spouse19', 1),
(18, 'Address 18', 181818, 'emp18@mail.com','1973-10-09', 'M', 'N', NULL, NULL),
(5,  'Address 5',  555555, 'emp5@mail.com',  '1974-10-13', 'F', 'N', NULL, NULL),
(8,  'Address 8',  888888, 'emp8@mail.com',  '1975-01-12', 'M', 'N', NULL, NULL);

/*1. List all employee ids and birth dates who were born before 1965.*/
SELECT e_id, birth_date
FROM employee_per
WHERE birth_date < '1965-01-01';


/*2. Display Ids and birth dates of employees born in and between 1970 and 1972. (This is tricky... you need to give it a little thought)*/
SELECT e_id, birth_date
FROM employee_per
WHERE birth_date BETWEEN '1970-01-01' AND '1972-12-31';
