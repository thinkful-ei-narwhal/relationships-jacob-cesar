-- How many people work in the Sales department?
    SELECT COUNT(dept_name) as people
    FROM department 
    JOIN employee ON department.id = employee.department
    where dept_name= 'Sales';


    -- List the names of all employees assigned to the 'Plan Christmas party' project.
    SELECT employee.emp_name as employee
    FROM employee
    JOIN employee_project on employee.id= employee_project.emp_id
    JOIN project on employee_project.project_id= project.id
    Where project.project_name ='Plan christmas party';

    -- List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.
    SELECT e.emp_name as Warehouse_employee_paint_dry
    FROM project p
    JOIN employee_project on p.id= employee_project.project_id
    JOIN employee e on e.id= employee_project.emp_id
    JOIN department d ON d.id = e.department
    where dept_name= 'Warehouse' AND p.project_name ='Watch paint dry';

    
--  Which projects are the Sales department employees assigned to?
    SELECT d.dept_name as department, p.project_name as projects , e.emp_name as employee
    FROM project p
    JOIN employee_project on p.id= employee_project.project_id
    JOIN employee e on e.id= employee_project.emp_id
    JOIN department d ON d.id = e.department
    where dept_name= 'Sales';

    -- List only the managers that are assigned to the 'Watch paint dry' project.
