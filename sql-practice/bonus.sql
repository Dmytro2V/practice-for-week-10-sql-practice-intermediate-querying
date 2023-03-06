.read seed-data.sql

.print INTERMEDIATE Query 1: SELECT for attributes matching a pattern
SELECT * from albums WHERE title LIKE 'The%';

.print INTERMEDIATE Query 2: SELECT ordered data
SELECT * from 
    (SELECT * FROM albums 
    ORDER BY num_sold DESC
    LIMIT 2)
    ORDER BY num_sold
;

.PRINT ADVANCED Query 3: SELECT in the middle of ordered data
SELECT * from 
    (SELECT * FROM albums 
    ORDER BY num_sold DESC
    LIMIT 2 OFFSET 2)
    ORDER BY num_sold
;