CREATE TRIGGER after_clients_insert
AFTER INSERT ON Employees
FOR EACH ROW
BEGIN
    INSERT INTO User (username, password, role)
    VALUES (NEW.username, NEW.password, NEW.role);
END;


DROP TRIGGER after_employee_insert;
