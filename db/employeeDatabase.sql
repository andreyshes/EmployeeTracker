DROP DATABASE IF EXISTS employeeDB;
CREATE DATABASE employeeDB;


USE employeeDB;

CREATE TABLE department(
did INTEGER(12) NOT NULL AUTO_INCREMENT,
name VARCHAR(35) NOT NULL,
PRIMARY KEY(did)
);




CREATE TABLE roles(
id INTEGER(12) NOT NULL AUTO_INCREMENT,
title VARCHAR(35),
salary DECIMAL(10,2),
department_id  INTEGER,
PRIMARY KEY(id),
INDEX `idx_department_id`(department_id),
  CONSTRAINT `fk_department_id`
  FOREIGN KEY (department_id)
  REFERENCES department(did) ON UPDATE CASCADE ON DELETE RESTRICT
);




CREATE TABLE employee(
id INTEGER(12) NOT NULL AUTO_INCREMENT,
first_name VARCHAR(35),
last_name VARCHAR(35),
role_id INTEGER,
manager_id INTEGER,
PRIMARY Key(id),
INDEX`idx_role`(role_id),
  CONSTRAINT `fk_role_id`
  FOREIGN KEY (role_id) 
  REFERENCES roles(id) ON UPDATE CASCADE ON DELETE RESTRICT,
  INDEX `idx_manager`(manager_id), 
  CONSTRAINT `fk_manager_id`
  FOREIGN KEY (manager_id)
  REFERENCES roles(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

SELECT * FROM roles;
SELECT * FROM department;
SELECT * FROM employee;

INSERT INTO department(name)
VALUES('xray');
SELECT * FROM department
SELECT name AS "Departments" FROM department

