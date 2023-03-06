.read seed-data.sql

.print Query 1: SELECT with a comparison operator
SELECT * from albums WHERE num_sold >= 100000;

.print Query 2: SELECT matching a range of values
SELECT * from albums WHERE year BETWEEN 2018 AND 2020;

.print Query 3: SELECT for attributes matching a list of values
SELECT * from albums WHERE band_id IN (1, 3, 4);