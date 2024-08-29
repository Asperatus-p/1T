CREATE DATABASE Petrov;

\c Petrov;


CREATE TABLE test_table (
    name VARCHAR(10) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    age INT CHECK (age > 0 AND age <= 150)
);

INSERT INTO test_table (name, surname, city, age) VALUES
('Anna', 'Smith', 'New York', 25),
('Bob', 'Johnson', 'Los Angeles', 32),
('Clara', 'Williams', 'Chicago', 28),
('David', 'Brown', 'Houston', 45),
('Eve', 'Jones', 'Philadelphia', 30),
('Frank', 'Garcia', 'Phoenix', 40),
('Gina', 'Martinez', 'San Antonio', 35),
('Hank', 'Davis', 'San Diego', 22),
('Ivy', 'Lopez', 'Dallas', 29),
('Jack', 'Gonzalez', 'San Jose', 38),
('Kate', 'Wilson', 'Austin', 27),
('Leo', 'Anderson', 'Jacksonville', 33),
('Mona', 'Thomas', 'San Francisco', 26),
('Nina', 'Hernandez', 'Indianapolis', 24),
('Owen', 'Moore', 'Columbus', 31),
('Paull', 'Martin', 'Fort Worth', 37),
('Quinner', 'Jackson', 'Charlotte', 23),
('Rickky', 'Thompson', 'Detroit', 34),
('Suesen', 'White', 'El Paso', 36),
('Tom', 'Harris', 'Memphis', 39);
