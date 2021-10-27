select * 
from Employees

-- Table details 
desc Employees

-- projection first_name, job_id, salary
select first_name, job_id, salary
from Employees

-- selection condition - 01
select *
from Employees
where first_name = 'Daniel';

-- projection selection condition - 01
select employees_id, first_name, job_id, salary 
from Employees
where first_name = 'Daniel';

-- Question 01: find Employees whose salary is more than 5000 ?
select * 
from Employees
where salary > 5000;

-- Question : find Employees whose salary > 5000 and salary < 10000 ?
select * 
from Employees
where salary > 5000 and salary < 10000;

-- Question 02: 
--  speacial operators 
--      1. betwen . . and . . 
--      2. IN (set of values)
--      3. is NULL
--      4. LIKE
--      5. AND
--      6. OR
--      7. NOT

-- between AND
select * 
from Employees
where salary between 5000 and 10000;

-- not between
select * 
from Employees
where salary not between 5000 and 10000;

-- IN
select * 
from Employees
where job_id in ('IT_PROG','SA_REP');

-- NOT IN
select * 
from Employees
where job_id not in ('IT_PROG','SA_REP');

-- NULL
select * 
from Employees
where COMMISSION_PCT is null

-- NOT NULL
select * 
from Employees
where COMMISSION_PCT is not null

-- LIKE (for matching the pattern)
--  __1character
--  %0 to any number ofcharacter
--  _a , a_ , %a_ , 
select * 
from Employees
where first_name like '%a%';

-- LINK , OR
select * 
from Employees
where first_name like '%a%' or last_name like '%a%';
-- alternative CODE 
select * 
from Employees
where first_name || last_name like '%a%';






