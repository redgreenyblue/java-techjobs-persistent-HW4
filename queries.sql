## Part 1: Test it with SQL

SHOW COLUMNS FROM job;
/*
Table: job
Columns:
id int PK
name varchar(64)
employer_id int FK
*/

## Part 2: Test it with SQL

SELECT name FROM employer where location = "St. Louis City";

## Part 3: Test it with SQL

DROP TABLE job;

## Part 4: Test it with SQL

/*# Using inner joins on foreign keys */
SELECT DISTINCT skill.name, skill.description
FROM skill
INNER JOIN job_skills ON (job_skills.skills_id = skill.id)
ORDER BY name
;

/*#Using where skill.id is in job_skills as skills_id and is not null*/
SELECT name, description FROM skill
WHERE id IN (SELECT skills_id FROM job_skills WHERE skills_id IS NOT NULL)
ORDER BY name;