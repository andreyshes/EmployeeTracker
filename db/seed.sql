INSERT INTO department(name)
VALUES
('Management'),
('Sales'),
('Warehouse'),
('Human Resources'),
('Quality Control'),
('Office Management'),
('Accounting');


INSERT INTO roles(title, salary, department_id)
VALUES
('Regional Manager', 100000, 1),
('Sales Rep', 67000, 2),
('Software Sales', 145000, 4),
('Forklift Operator', 45000, 3),
('Receptionist', 47000, 6),
('Accountant', 89000, 7);


INSERT INTO employee(first_name, last_name, role_id)
VALUES
('Stephen, Armstrong, 1')
('Dominick, Clark, 5')
('Maci, Wallace, 3')
('Malcolm ,Stafford, 9')
('Camille, Browning, 7')

UPDATE `employeeDB`.`employee` SET `manager_id` = '1' WHERE (`id` > '1');
