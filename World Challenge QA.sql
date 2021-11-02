use world;
describe city;
-- QUESTION 1
SELECT COUNT(ID) FROM city WHERE countrycode = "USA";
describe country;
-- QUESTION 2
SELECT SUM(population) FROM country WHERE name ="Argentina";
-- QUESTION 3
SELECT MAX(LifeExpectancy) From country;
SELECT * FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy DESC LIMIT 1;

SELECT c.Capital
FROM country c
JOIN ;
-- QUESTION 6
SELECT name FROM city WHERE name LIKE "F%" ORDER BY name LIMIT 25;
SELECT * FROM country;
SELECT * FROM city;
SELECT countrycode FROM city WHERE countrycode = (SELECT code FROM country WHERE Code = CHN); 

-- QUESTION 7
-- SELECT countrycode FROM city WHERE countrycode =(SELECT c.code
-- FROM country c
-- JOIN city ct ON c.code = ct.countrycode);
SELECT ct.countrycode, c.code,ct.name, c.name
FROM country c
JOIN city ct ON c.code = ct.countrycode;
SELECT COUNT(countrycode) From city WHERE ;
-- QUESTION 8
SELECT Population From country;
SELECT * FROM country WHERE Population >=1 ORDER BY Population asc LIMIT 1;

-- QUESTION 9
SELECT COUNT(Code) FROM country;

-- QUESTION 10
SELECT * FROM country WHERE SurfaceArea IS NOT NULL ORDER BY SurfaceArea desc LIMIT 10;

-- QUESTION 11
SELECT name FROM city WHERE countrycode = "JPN" ORDER BY Population desc LIMIT 5;

-- Didn't manage to finish many of the questions and some of the work is all over the place, going to spend some more time on this later. 
