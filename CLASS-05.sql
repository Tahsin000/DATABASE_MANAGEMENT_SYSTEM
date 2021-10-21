-- // Problem_01
Select * 
from EMPLOYEES
where salary = (Select salary
                from EMPLOYEES
                where FIRST_NAME = 'Lex') and FIRST_NAME!='Lex'

-- // Problem_02;
Select * 
from EMPLOYEES
where DEPARTMENT_ID= (Select DEPARTMENT_ID
                    from EMPLOYEES
                    where FIRST_NAME = 'Diana')

-- Problem_03
Select * 
from EMPLOYEES
where DEPARTMENT_ID IN (Select DEPARTMENT_ID
                        from EMPLOYEES
                        where FIRST_NAME = 'Steven')

-- Problem_04
Select * 
from EMPLOYEES
where DEPARTMENT_ID IN (Select DEPARTMENT_ID
                        from EMPLOYEES
                        where FIRST_NAME = 'Steven') and
        job_id = (Select job_id
                from EMPLOYEES
                where FIRST_NAME = 'Steven')

