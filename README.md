# Log Analysis tool

##### Description

This is a log analysis tool that prints out a report in plain text answering 
the questions more below.  

Questions:
1. What are the most popular three articles of all time? 
2. Who are the most popular article authors of all time? 
3. On which days did more than 1% of requests lead to errors? 

Technically, it is program written in Python, which connects to PostgreSQL,
which is a relational database, perform necessaries queriest to answer the 
questions, then it formats the result in plain text easily readable. 

##### How to run it:
1. Requirements: To have PostgreSQL and Python installed; 
To load the "news" database on PostgreSQL, use newsdata.sql for that. 
2. Copy news.py, and newsdb.py to a local folder;
3. From a prompt command, go to where news.py is, then type:
_python news.py_

##### Expected result:
Following is an exemple result:
``` 
 1. What are the most popular three articles of all time?
    * "Candidate is jerk, alleges rival" - 338647 views
    * "Bears love berries, alleges bear" - 253801 views
    * "Bad things gone, say good people" - 170098 views
 2. Who are the most popular article authors of all time?
    * "Ursula La Multa" - 507594 views
    * "Rudolf von Treppenwitz" - 423457 views
    * "Anonymous Contributor" - 170098 views
    * "Markoff Chaney" - 84557 views
3. On which days did more than 1% of requests lead to errors?
    * "Jul 17, 2016" - 2.26 errors
```

##### Program versions:
* Python 2.7.12
* PostgreSQL 9.5.13 on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609, 64-bit

##### References:
* How to concatenate columns in a Postgres SELECT? URL: < https://stackoverflow.com/questions/19942824/how-to-concatenate-columns-in-a-postgres-select >. Accessed by Aug, 2018;
* PostgreSQL TRIM Function. URL: < http://www.postgresqltutorial.com/postgresql-trim-function/ >. Accessed by Aug, 2018;
* Joins Between Tables, Chapter 2. The SQL Language, PostgreSQL 8.3.23 Documentation. URL: < https://www.postgresql.org/docs/8.3/static/tutorial-join.html >. Accessed by Aug, 2018;
* How to get the top 10 values in postgresql? URL: < https://stackoverflow.com/questions/13674031/how-to-get-the-top-10-values-in-postgresql >. Accessed by Aug, 2018;
* How to GROUP BY date with a timestamp field in Postgres? URL: < https://stackoverflow.com/questions/48841591/how-to-group-by-date-with-a-timestamp-field-in-postgres >. Accessed by Aug, 2018;
* SQL Wildcards. URL: < https://www.w3schools.com/sql/sql_wildcards.asp >. Accessed by Aug, 2018;
* How to SUM two fields within an SQL query. URL: < https://stackoverflow.com/questions/14877797/how-to-sum-two-fields-within-an-sql-query >. Accessed by Aug, 2018;
* Decimal values in SQL for dividing results. URL: < https://stackoverflow.com/questions/4834973/decimal-values-in-sql-for-dividing-results >. Accessed by Aug, 2018;
* How to exit from PostgreSQL command line utility: psql. URL: < https://stackoverflow.com/questions/9463318/how-to-exit-from-postgresql-command-line-utility-psql >. Accessed by Aug, 2018;