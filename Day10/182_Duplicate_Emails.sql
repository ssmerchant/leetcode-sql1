'''
Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
 

Write an SQL query to report all the duplicate emails. Note that it is guaranteed that the email field is not NULL.

Return the result table in any order.
'''
--MySQL Solution

SELECT email FROM Person
GROUP BY email
HAVING COUNT(email) > 1
