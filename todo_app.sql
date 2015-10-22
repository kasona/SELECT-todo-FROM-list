-- 1. Write a query to delete a user named michael if it exists
-- DROP USER IF EXISTS michael;

-- 2. Write a query to create a user named michael with an encrypted password stonebreaker
-- CREATE USER michael WITH ENCRYPTED PASSWORD 'stonebreaker';

-- 3. Write a query to drop a database named todo_app if it exists
-- DROP DATABASE IF EXISTS todo_app;

-- 4. Write a query to create a database named todo_app
-- CREATE DATABASE todo_app;

-- 5. Connect to the newly created database
-- \c todo_app;

--6. Write a query to create a table named tasks using hte Inital columns detailed below
-- CREATE TABLE tasks (
--   id  serial NOT NULL,
--   title character varying(255) NOT NULL,
--   description text DEFAULT NULL,
--   created_at  timestamp DEFAULT now(),
--   updated_at  timestamp DEFAULT NULL,
--   completed boolean NOT NULL
--   );

-- 7. Define column id as the table's primary key
-- ALTER TABLE tasks ADD PRIMARY KEY (id);

-- 8. Write queries...
-- i.Remove column named completed
-- ALTER TABLE tasks DROP COLUMN completed;

-- ii.Add a column to tasks named completed_at : timestamp, that maybe NULL and has a default value of NULL
-- ALTER TABLE tasks ADD COLUMN completed_at timestamp DEFAULT NULL;

-- iii. Change the updated_at column to not allow NULL values, and have default value of now()
-- ALTER TABLE tasks ALTER COLUMN updated_at SET DEFAULT now();
-- ALTER TABLE tasks ALTER COLUMN updated_at SET NOT NULL;

-- iv. Create a new task, by only setting values (not defining which columns)
-- INSERT INTO tasks VALUES (
--   DEFAULT,
--   'Study SQL',
--   'Complete this exercise',
--   now(),
--   now(),
--   NULL
--   );

-- v. Create a new task
-- INSERT INTO tasks VALUES (
--   DEFAULT,
--   'Study PostgreSQL',
--   'Read all the documentation'
--   );

--v i. Select all the titles of tasks that are not yet completed
SELECT title FROM tasks WHERE completed_at IS NULL;

-- vii. Update the task with a title of 'Study SQL' to be completed as of now
-- UPDATE tasks SET completed_at = now() WHERE title = 'Study SQL';

-- viii. Select all titles and descriptions of tasks that are not yet completed
-- SELECT title, description FROM tasks WHERE completed_at = NULL;

-- ix. Select all fields of every task sorted by creation date in descending order
-- SELECT * FROM tasks ORDER BY created_at DESC;

-- x. Create a new task
-- INSERT INTO tasks VALUES (
--   DEFAULT,
--   'mistake 1',
--   'a test entry'
--   );

-- xi. Create a new task
-- INSERT INTO tasks VALUES (
--   DEFAULT,
--   'mistake 2',
--   'another test entry'
--   );

-- xii. Create a new task
-- INSERT INTO tasks VALUES (
--   DEFAULT,
--   'third mistake',
--   'another test entry'
--   );

-- xiii. Select title fields of all tasks with a title that includes the word 'mistake'
-- SELECT title FROM tasks WHERE title LIKE '%' || 'mistake' || '%';

-- xiv. Delete the task that has a title of mistake 1
-- DELETE FROM tasks where title = 'mistake 1';

-- xv. Select title and description fields of all tasks with a title that includes the word 'mistake'
-- SELECT title, description FROM tasks WHERE title LIKE '%' || 'mistake' || '%';

-- xvi. Delete all tasks that includes the word 'mistake' inthe title
-- DELETE FROM tasks where title LIKE '%' || 'mistake' || '%';

-- xvii. Select all fields of all tasks sorted by title in ascending order
-- SELECT * FROM tasks ORDER BY title ASC;