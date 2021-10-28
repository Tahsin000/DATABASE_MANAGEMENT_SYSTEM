-- find employees having "IT" in their job id and "A their name;
select first_name, last_name, job_id
from EMPLOYEES
where (FIRST_NAME like '%a%' OR LAST_NAME like '%a%') and job_id like 'IT%';

-- OUTPUT:
-- FIRST_NAME	LAST_NAME	JOB_ID
-- Alexander	Hunold	IT_PROG
-- David	Austin	IT_PROG
-- Valli	Pataballa	IT_PROG
-- Diana	Lorentz	IT_PROG

-- rules of precedence CHAPTER -> 2 -> 18
-- NOT equal to operator -> "!=" OR "<>"

-- sort { ascending order }
order by employees_id

-- sort { descending order }
order by employees_id desc

-- keyboard input
select EMPLOYEE_ID, first_name, last_name, job_id
from EMPLOYEES
where first_name=:input;

-- CHAPTER 3 :  1. Single row function -> it takes single row as a output and produce single row as a output
--              2. Multi row function -> it takes multi row as a output and produce multi row as a output
--              3. User define -> PL_SQL


-- Single Row Function -> 5 types of single row function 
--  1. CHAR fun()
--      a. CHAR Manipulation
--      b. CASE Manipulation
--  2. NUMBER fun()
--  3. DATE fun()
--  4. CONVERSION fun()
--  5. GENERAL fun()

-- UPPER Case CONVERSION
select EMPLOYEE_ID, first_name,upper(first_name)as UPPER_FIRST_NAME, last_name, job_id
from EMPLOYEES

-- initcap CONVERSION -> { Example } -> "'T'ahsin"
select EMPLOYEE_ID, first_name,upper(first_name), last_name, job_id, initcap(job_id)
from EMPLOYEES

-- Find the first_name where input is rendom types of CHAR Manipulation ;
select EMPLOYEE_ID, first_name,upper(first_name), last_name, job_id, initcap(job_id)
from EMPLOYEES
where first_name=initcap(:input);

-- CHAPTER 3 : Relation algebra
-- SELECT -> PI -> pi is the projection operator -> (Example){ PI (EMPLOYEE_ID, first_name, last_name, job_id) }
-- WHERE -> sigma -> (Example){ CONDITION -> sigma(first_name='Steven') }
-- FROM -> (EMPLOYEES) -> (Example){ from EMPLOYEES }

-- Example of Relation algebra
select EMPLOYEE_ID, first_name, last_name, job_id
from EMPLOYEES
where first_name='Steven';
-- PI EMPLOYEE_ID, first_name, last_name, job_id (sigmafirst_name='Steven'(EMPLOYEES))

-- Question - https://i.ibb.co/QDhKJCm/image.png
select *
from loan
where branch_name='Perryridge';

-- Question - https://i.ibb.co/84NvBrJ/image.png
select *
from loan
where amount > 1200;

-- Question - https://i.ibb.co/QKMq74M/image.png
select loan_number, amount
from loan

-- Question - https://i.ibb.co/vZqBcsF/image.png
select customer_name
from customer
where customer_city = 'Harrison'

-- Character manipulation
-- 1. LPAD
    select EMPLOYEE_ID, first_name, last_name, job_id, LPAD(salary, 6, '*')
    from employees

-- 2. RPAD
    select EMPLOYEE_ID, first_name, last_name, job_id, RPAD(salary, 6, '*')
    from employees

-- 3. SUBSTR
    select EMPLOYEE_ID, first_name, last_name, job_id
    from employees
    where substr(job_id, 4) = 'REP';

-- 4. INSTR
-- 5. LENGTH

