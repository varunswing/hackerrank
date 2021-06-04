1. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE substr(CITY,1,1) in ('a','e','i','o','u') ;


2. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT city FROM station WHERE city LIKE '%a' OR city LIKE '%e' OR city LIKE '%i' OR city LIKE '%o' OR city LIKE '%u';  


3. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE right(CITY,1) in ('a','e','i','o','u') and left(CITY,1) in ('a','e','i','o','u');


4. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE left(CITY,1) not in ('a','e','i','o','u');


5. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT(CITY) FROM STATION WHERE CITY NOT REGEXP '[aeiou]$';


6. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Select DISTINCT CITY from STATION where CITY REGEXP '^[^aeiou]|[^aeiou]$';


7. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

Select DISTINCT CITY from STATION where CITY REGEXP '^[^aeiou]' and city REGEXP'[^aeiou]$';



// REGEXP in MYSQL

*	Zero or more instances of string preceding it
+	One or more instances of strings preceding it
.	Any single character
?	Match zero or one instances of the strings preceding it.
^	caret(^) matches Beginning of string
$	End of string
[abc]	Any character listed between the square brackets
[^abc]	Any character not listed between the square brackets
[A-Z]	match any upper case letter.
[a-z]	match any lower case letter
[0-9]	match any digit from 0 through to 9.
[[:<:]]	matches the beginning of words.
[[:>:]]	matches the end of words.
[:class:]	matches a character class i.e. [:alpha:] to match letters, [:space:] to match white space, [:punct:] is match punctuations and [:upper:] for upper class letters.
p1|p2|p3	Alternation; matches any of the patterns p1, p2, or p3
{n}	n instances of preceding element
{m,n}	m through n instances of preceding element


8. Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY SUBSTR(NAME, LENGTH(NAME)-2, 3), ID;    


9. Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

select name from employee order by name;


10. Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.

select name from employee where salary > 2000 and months < 10 order by employee_id


11. Query the average population for all cities in CITY, rounded down to the nearest integer.

Select round(avg(population)) from city;


12. Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Select sum(population) from city where countrycode = 'JPN';


13. Query the difference between the maximum and minimum populations in CITY.

select max(population) - min(population) from city;

14. Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

SELECT
  CASE 
    WHEN A + B <= C or A + C <= B or B + C <= A THEN 'Not A Triangle'
    WHEN A = B and B = C THEN 'Equilateral'
    WHEN A = B or A = C or B = C THEN 'Isosceles'
    WHEN A <> B and B <> C THEN 'Scalene'
  END
FROM TRIANGLES;


15. Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.

select round(sum(lat_n), 2), round(sum(long_w), 2) from station;


16. Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than < 137.2345. Truncate your answer to 4 decimal places.

select round(sum(lat_n), 4) from station where lat_n > 38.7880 and lat_n < 137.2345;


17. Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.

select round(max(lat_n), 4) from station where lat_n < 137.2345;


18. Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

select round(long_w, 4) from station 
where lat_n = (select max(lat_n) from station where lat_n < 137.2345);


19. Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7880. Round your answer to 4 decimal places.

select round(min(lat_n), 4) from station where lat_n > 38.7880;


20. Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7880. Round your answer to 4 decimal places.

select round(long_w, 4) from station 
where lat_n = (select min(lat_n) from station where lat_n > 38.7880);


21. Consider P1(a, b) and P2(c, d) to be two points on a 2D plane.
a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

select round(abs(min(lat_n) - max(lat_n)) + abs(min(long_w) - max(long_w)), 4) from station;

22. Consider P1(a, c) and P2(b, d) to be two points on a 2D plane where (a, b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c, d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

select round(sqrt(power(min(lat_n) - max(lat_n), 2) + power(min(long_w) - max(long_w), 2)), 4) from station;


23. A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

 SELECT ROUND(S1.LAT_N, 4) 
    FROM STATION AS S1 
    WHERE (SELECT ROUND(COUNT(S1.ID)/2) - 1 
          FROM STATION) = 
          (SELECT COUNT(S2.ID) 
          FROM STATION AS S2 
          WHERE S2.LAT_N > S1.LAT_N);

  -- IN Oracle use direct median fxn.


24. Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboards 0 key was broken 
until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), 
and the actual average salary. Write a query calculating the amount of error (i.e.actual - miscalculated:  average monthly salaries), and round it up to the next integer.

select ceil(avg(salary) - avg(replace(salary, 0, ''))) from employees;


25. Query a count of the number of cities in CITY having a Population larger than 100000.

select count(population) from city where population > 100000;


26. Query the total population of all cities in CITY where District is California.

select sum(population) from city where district = 'California';


27. Query the average population of all cities in CITY where District is California.

select avg(population) from city where district = 'California';


28. We define an employees total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.

SELECT months * salary AS earnings, COUNT(*) 
FROM Employee 
GROUP BY earnings -- It creates the group of same earnings
ORDER BY earnings DESC
LIMIT 1;

29. Write a query to print the pattern P(20).

set @i = 21;
select repeat('* ', @i := @i - 1) from information_schema.tables limit 20;

30. P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).

set @i = 0;
select repeat('* ', @i := @i + 1) from information_schema.tables limit 20;