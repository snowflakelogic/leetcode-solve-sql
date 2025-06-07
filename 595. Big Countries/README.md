<h2><a href="https://leetcode.com/problems/big-countries">595. Big Countries</a></h2> <img src='https://img.shields.io/badge/Difficulty-Easy-brightgreen' alt='Difficulty: Easy' /><hr><p>Table: <code>World</code></p>
<pre>
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+
name is the primary key (column with unique values) for this table.
Each row of this table gives information about the name of a country, the continent to which it belongs, its area, the population, and its GDP value.
</pre>
<p>&nbsp;</p>
<p>A country is big if:</p>
<ul>
<li>it has an area of at least three million (i.e., 3000000 km2), or</li>
<li>it has a population of at least twenty-five million (i.e., 25000000).</li>
</ul>
<p>Write a solution to find the name, population, and area of the big countries.</p>
<p>Return the result table in <strong>any order</strong>.</p>
<p>The result format is in the following example.</p>
<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre>
<strong>Input:</strong> 
World table:
+-------------+-----------+---------+------------+--------------+
| name        | continent | area    | population | gdp          |
+-------------+-----------+---------+------------+--------------+
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |
+-------------+-----------+---------+------------+--------------+
<strong>Output:</strong> 
+-------------+------------+---------+
| name        | population | area    |
+-------------+------------+---------+
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |
+-------------+------------+---------+
<strong>Explanation:</strong> Afghanistan and Algeria are big countries because they have populations of at least 25 million.
</pre>
**Query**
```sql
# Write your MySQL query statement below
SELECT name, population, area 
FROM World 
WHERE area >= 3000000 OR population >= 25000000;
```
