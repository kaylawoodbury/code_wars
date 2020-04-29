-- For this challenge you need to create a simple SELECT statement that will return all columns from the people table, and join to the toys table so that you can return the COUNT of the toys

-- people table schema
-- id
-- name
-- toys table schema
-- id
-- name
-- people_id
-- You should return all people fields as well as the toy count as "toy_count".

-- NOTE: You're solution should use pure SQL. Ruby is used within the test cases to do the actual testing.

select p.*
  , count(t.id) toy_count
from people p
join toys t on t.people_id = p.id
group by p.id

-- Other Soltuions

SELECT p.*, COUNT(t) AS toy_count
FROM people p
JOIN toys t
  ON t.people_id = p.id
GROUP BY p.id