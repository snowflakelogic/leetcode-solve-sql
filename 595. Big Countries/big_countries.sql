# Write your MySQL query statement below
SELECT name,population,area 
FROM World AS w
WHERE w.area >= 3000000 OR w.POPULATION >= 25000000;
