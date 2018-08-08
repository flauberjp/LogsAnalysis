fullstack-nanodegree-vm
=============

Common code for the Relational Databases and Full Stack Fundamentals courses

1. What are the most popular three articles of all time? 
select title, views from (select path, count(*) AS Views from log where status like '2%' AND path in (select concat('/article/', slug) from articles) group by path) a, (select ar.title, au.name, CONCAT('/article/', ar.slug) as path from articles ar join authors au on (ar.author = au.id)) b where a.path = b.path order by views desc fetch first 3 rows only;
              title               | views
----------------------------------+--------
 Candidate is jerk, alleges rival | 338647
 Bears love berries, alleges bear | 253801
 Bad things gone, say good people | 170098
(3 rows)

2. Who are the most popular article authors of all time? 
select name, sum(views) as views from (select * from (select path, count(*) AS Views from log where status like '2%' AND path in (select concat('/article/', slug) from articles) group by path) a, (select ar.title, au.name, CONCAT('/article/', ar.slug) as path from articles ar join authors au on (ar.author = au.id)) b where a.path = b.path) as foo group by name order by views desc;
          name          | views
------------------------+--------
 Ursula La Multa        | 507594
 Rudolf von Treppenwitz | 423457
 Anonymous Contributor  | 170098
 Markoff Chaney         |  84557
(4 rows)

3. On which days did more than 1% of requests lead to errors? 
select c.date as date, c.errors_percentage from (select a.date, a.good_requests + b.bad_requests as total_requests, a.good_requests, b.bad_requests, ROUND(((100.0 * b.bad_requests)/(a.good_requests + b.bad_requests)), 2) as errors_percentage from (select TO_CHAR(time, 'Mon DD, YYYY') as date, count(*) as good_requests from log where status like '2%' group by TO_CHAR(time, 'Mon DD, YYYY')) a join (select TO_CHAR(time, 'Mon DD, YYYY') as date, count(*) as bad_requests from log  where status like '4%' group by TO_CHAR(time, 'Mon DD, YYYY')) b on a.date = b.date order by errors_percentage desc) c where c.errors_percentage >= 1; 
     date     | errors_percentage
--------------+-------------------
 Jul 17, 2016 |              2.26
(1 row)

References:
* How to concatenate columns in a Postgres SELECT? URL: < https://stackoverflow.com/questions/19942824/how-to-concatenate-columns-in-a-postgres-select >. Accessed by Aug, 2018;
* PostgreSQL TRIM Function. URL: < http://www.postgresqltutorial.com/postgresql-trim-function/ >. Accessed by Aug, 2018;
* Joins Between Tables, Chapter 2. The SQL Language, PostgreSQL 8.3.23 Documentation. URL: < https://www.postgresql.org/docs/8.3/static/tutorial-join.html >. Accessed by Aug, 2018;
* How to get the top 10 values in postgresql? URL: < https://stackoverflow.com/questions/13674031/how-to-get-the-top-10-values-in-postgresql >. Accessed by Aug, 2018;
* How to GROUP BY date with a timestamp field in Postgres? URL: < https://stackoverflow.com/questions/48841591/how-to-group-by-date-with-a-timestamp-field-in-postgres >. Accessed by Aug, 2018;
* SQL Wildcards. URL: < https://www.w3schools.com/sql/sql_wildcards.asp >. Accessed by Aug, 2018;
* How to SUM two fields within an SQL query. URL: < https://stackoverflow.com/questions/14877797/how-to-sum-two-fields-within-an-sql-query >. Accessed by Aug, 2018;
* Decimal values in SQL for dividing results. URL: < https://stackoverflow.com/questions/4834973/decimal-values-in-sql-for-dividing-results >. Accessed by Aug, 2018;