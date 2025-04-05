CREATE DATABASE flight_booking_system;
USE flight_booking_system;

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO passengers VALUES
(1, 'Alice Smith', 'alice@gmail.com'),
(2, 'Bob Johnson', 'bob@gmail.com'),
(3, 'Cathy Brown', 'cathy@gmail.com'),
(4, 'David Lee', 'david@gmail.com'),
(5, 'Ella Wong', 'ella@gmail.com'),
(6, 'Frank Martin', 'frank@gmail.com'),
(7, 'Grace Adams', 'grace@gmail.com'),
(8, 'Henry White', 'henry@gmail.com'),
(9, 'Isla Green', 'isla@gmail.com'),
(10, 'Jack Black', 'jack@gmail.com');

CREATE TABLE flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(10),
    origin VARCHAR(50),
    destination VARCHAR(50),
    departure_time DATETIME,
    status VARCHAR(20)
);

INSERT INTO flights VALUES
(101, 'AA101', 'New York', 'London', '2024-10-01 09:00:00', 'Scheduled'),
(102, 'AA102', 'London', 'New York', '2024-10-05 18:00:00', 'Scheduled'),
(103, 'DL203', 'Atlanta', 'Paris', '2024-10-10 16:00:00', 'Delayed'),
(104, 'UA300', 'Chicago', 'Tokyo', '2024-10-12 11:00:00', 'Cancelled'),
(105, 'AF404', 'Paris', 'Rome', '2024-10-15 13:30:00', 'Scheduled'),
(106, 'BA505', 'London', 'Dubai', '2024-10-17 20:45:00', 'Scheduled'),
(107, 'QA606', 'Dubai', 'New York', '2024-10-20 23:00:00', 'Scheduled'),
(108, 'EM707', 'Dubai', 'Sydney', '2024-10-22 01:30:00', 'Scheduled');

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    booking_date DATE,
    seat_number VARCHAR(10)
);

INSERT INTO bookings VALUES
(1, 1, 101, '2024-09-01', '12A'),
(2, 2, 101, '2024-09-02', '12B'),
(3, 3, 102, '2024-09-05', '14A'),
(4, 4, 103, '2024-09-06', '15B'),
(5, 5, 104, '2024-09-07', '16C'),
(6, 6, 105, '2024-09-08', '17D'),
(7, 7, 106, '2024-09-09', '18E'),
(8, 8, 106, '2024-09-09', '18F'),
(9, 9, 107, '2024-09-10', '19A'),
(10, 10, 107, '2024-09-11', '19B'),
(11, 1, 108, '2024-09-12', '20A'),
(12, 2, 108, '2024-09-13', '20B'),
(13, 3, 106, '2024-09-13', '21C'),
(14, 4, 105, '2024-09-14', '21D'),
(15, 5, 102, '2024-09-14', '22A'),
(16, 6, 103, '2024-09-15', '22B'),
(17, 7, 104, '2024-09-15', '23A'),
(18, 8, 101, '2024-09-16', '23B'),
(19, 9, 102, '2024-09-16', '24A'),
(20, 10, 101, '2024-09-17', '24B');

