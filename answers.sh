Basic Queries

"SELECT * FROM students"
"SELECT Name FROM students"
"SELECT * FROM students WHERE Age > 30"
"SELECT Name FROM students WHERE Age = 30 AND Gender = "F" "
"SELECT Points FROM students WHERE name = "Alex" "
"INSERT INTO students VALUES (8, "Mariam", 31, "F", 500)"
"UPDATE students SET Points = Points + 100 WHERE name = "Basma" "
"UPDATE students SET points = points - 10 WHERE name = "Alex" "

Creating Table

"CREATE TABLE graduates (
ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
Name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation NUMERIC
);"

"INSERT INTO graduates(ID, Name, Age, Gender, Points)
   SELECT * FROM students
   WHERE name = "Layal"
   ;"
"UPDATE graduates SET Graduation = "08/09/2018" "
"DELETE FROM students WHERE name = "Layal" " 

Joins

"SELECT employees.Name, employees.Company, companies.Date
FROM employees
INNER JOIN companies ON employees.Company=companies.Name;"

"SELECT employees.Name
FROM employees
INNER JOIN companies ON employees.Company=companies.Name
WHERE companies.DATE <2000;"

"SELECT company
FROM employees 
WHERE Role = "Graphic Designer" "

Count and Filter

"SELECT Name FROM students
WHERE Points = (SELECT max(Points) FROM students);"

"SELECT
AVG (ALL Points)
FROM students;"

"SELECT count()
FROM students
WHERE Points = 500;"

"SELECT Name FROM students
WHERE Name LIKE '%s%';"

"SELECT Name
FROM students
ORDER BY Points DESC;"





