CREATE TABLE SUPPLIERS(
    SUPPLIER_ID INT PRIMARY KEY,
    SUPPLIER_NAME VARCHAR(40),
    CITY VARCHAR(30),
    STATE VARCHAR(20),
    TOTAL_SPENT INT
);
INSERT INTO SUPPLIERS VALUES(100,'Shop of Epiphany','Augusta','Georgia',220500)
INSERT INTO SUPPLIERS VALUES(200,'Instant Assemblers','Valdez','Alaska',37000)
INSERT INTO SUPPLIERS VALUES(300,'Time Manufacturers','Redwood City','California',90500)
INSERT INTO SUPPLIERS VALUES(400,'Roundhouse Inc.','New York City','New York',78150)
INSERT INTO SUPPLIERS VALUES(500,'Smiths & Berries','Portland','Oregon',114600)
INSERT INTO SUPPLIERS VALUES(600,'Wesson LLC','Yuma','Alaska',32000)
INSERT INTO SUPPLIERS VALUES(700,'ICF Foods','Orlando','California',78700)
INSERT INTO SUPPLIERS VALUES(800,'Cheffmens Inc.','Toledo','Georgia',187500)
INSERT INTO SUPPLIERS VALUES(900,'Samwoods Drinks','Portland','Georgia',17800)


--Write a query that retrieves suppliers that work in either Georgia or California.
SELECT * FROM SUPPLIERS 
WHERE STATE='Georgia' OR STATE='California';

--Write a query that retrieves suppliers with the characters "wo" and the character "I" or "i" in their name.
SELECT * FROM SUPPLIERS 
WHERE SUPPLIER_NAME LIKE '%wo%' AND ( SUPPLIER_NAME LIKE '%i%' OR SUPPLIER_NAME LIKE '%I%');

--Write a query that retrieves suppliers on which a minimum of 37,000 and a maximum of 80,000 was spent.
SELECT * FROM SUPPLIERS 
WHERE TOTAL_SPENT BETWEEN 37000 AND 80000;

/*
Write a query that returns the supplier names and the state in which they operate meeting the following conditions:

1. belong in the state Georgia or Alaska

2. the supplier id is 100 or greater than 600

3. the amount spent is less than 100,000 or the amount spent is 220,000
*/

SELECT SUPPLIER_NAME, STATE FROM SUPPLIERS
WHERE STATE IN ('Alaska','Georgia') AND
(SUPPLIER_ID=100 OR SUPPLIER_ID>600) AND
(TOTAL_SPENT <100000 OR TOTAL_SPENT=220000)

