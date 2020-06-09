CREATE DATABASE employee_Managment;

USE employee_Managment;

CREATE TABLE roles
(
    id int NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (DepartmentID) REFERENCES Department(id)
);

CREATE TABLE employee
(
    id int NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id int NOT NULL,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (ManagerID) REFERENCES employee(id),
    FOREIGN KEY (roleID) REFERENCES roles(id)
);

CREATE TABLE departments
(
    id int NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

