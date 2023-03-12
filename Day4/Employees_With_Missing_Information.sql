'''
Table: Employees

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| name        | varchar |
+-------------+---------+
employee_id is the primary key for this table.
Each row of this table indicates the name of the employee whose ID is employee_id.

 

Table: Salaries

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| salary      | int     |
+-------------+---------+
employee_id is the primary key for this table.
Each row of this table indicates the salary of the employee whose ID is employee_id.

 

Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:

    The employees name is missing, or
    The employees salary is missing.

Return the result table ordered by employee_id in ascending order.
'''
-- MySQL Solution

SELECT employee_id FROM Employees
WHERE employee_id not in (SELECT employee_id FROM Salaries)
union
SELECT employee_id FROM Salaries
WHERE employee_id not in (SELECT employee_id FROM Employees)
ORDER BY employee_id;
