use addressbook;
/*sir i can't download the employee_per.dat, so i create my own table po*/
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
(11, 'Quezon City, Metro Manila', 11111, 'emp11@bignet.ph', '1957-11-04', 'M', 'Y', 'Maria Santos', 4),
(16, 'Cebu City, Cebu', 161616, 'emp16@bignet.ph', '1964-03-06', 'F', 'Y', 'Jose Ramirez', 2),
(21, 'Davao City, Davao del Sur', 212121, 'emp21@bignet.ph', '1964-06-13', 'M', 'Y', 'Lorna Cruz', 2),
(14, 'Baguio City, Benguet', 141414, 'emp14@bignet.ph', '1965-04-28', 'F', 'N', NULL, NULL),
(15, 'Makati City, Metro Manila', 151515, 'emp15@bignet.ph', '1966-06-23', 'M', 'Y', 'Angela Torres', 3),
(7,  'Iloilo City, Iloilo', 777777, 'emp7@bignet.ph',  '1966-08-20', 'F', 'Y', 'Ramon Dela Cruz', 3),
(10, 'Pasig City, Metro Manila', 101010, 'emp10@bignet.ph', '1967-07-06', 'M', 'N', NULL, NULL),
(20, 'Cagayan de Oro City, Misamis Oriental', 202020, 'emp20@bignet.ph', '1968-01-25', 'F', 'N', NULL, NULL),
(12, 'Taguig City, Metro Manila', 121212, 'emp12@bignet.ph', '1968-02-15', 'M', 'Y', 'Maria Lopez', 3),
(2,  'Bacolod City, Negros Occidental', 222222, 'emp2@bignet.ph',  '1968-04-02', 'F', 'Y', 'Patrick Reyes', 3),
(9,  'Antipolo City, Rizal', 999999, 'emp9@bignet.ph',  '1968-05-19', 'M', 'Y', 'Jenna Soriano', 1),
(13, 'General Santos City, South Cotabato', 131313, 'emp13@bignet.ph', '1968-09-03', 'F', 'Y', 'Carlo Pascual', 2),
(3,  'Las Piñas City, Metro Manila', 333333, 'emp3@bignet.ph',  '1968-09-22', 'M', 'Y', 'Elaine Santos', 2),
(6,  'San Fernando City, Pampanga', 666666, 'emp6@bignet.ph', '1969-12-31', 'M', 'N', NULL, NULL),
(17, 'Zamboanga City, Zamboanga del Sur', 171717, 'emp17@bignet.ph', '1970-04-18', 'F', 'Y', 'Marco Villanueva', 1),
(1,  'Manila City, Metro Manila', 111111, 'emp1@bignet.ph', '1972-03-16', 'M', 'N', NULL, NULL),
(4,  'Marikina City, Metro Manila', 444444, 'emp4@bignet.ph', '1972-08-09', 'F', 'N', NULL, NULL),
(19, 'Tarlac City, Tarlac', 191919, 'emp19@bignet.ph', '1973-01-20', 'F', 'Y', 'Anthony Cruz', 1),
(18, 'Calamba City, Laguna', 181818, 'emp18@bignet.ph', '1973-10-09', 'M', 'N', NULL, NULL),
(5,  'Dasmariñas City, Cavite', 555555, 'emp5@bignet.ph', '1974-10-13', 'F', 'N', NULL, NULL),
(8,  'Valenzuela City, Metro Manila', 888888, 'emp8@bignet.ph', '1975-01-12', 'M', 'N', NULL, NULL);

/*1. List all employee ids and birth dates who were born before 1965.*/
SELECT e_id, birth_date
FROM employee_per
WHERE birth_date < '1965-01-01';


/*2. Display Ids and birth dates of employees born in and between 1970 and 1972. (This is tricky... you need to give it a little thought)*/
SELECT e_id, birth_date
FROM employee_per
WHERE birth_date BETWEEN '1970-01-01' AND '1972-12-31';