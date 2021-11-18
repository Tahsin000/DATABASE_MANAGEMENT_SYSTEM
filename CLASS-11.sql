/* 
_______________________________________
Writing format for the practical ( LAB )
_______________________________________
INDEX

1. Title
2. Abstract page
3. introduction
4. ERD(logical schema)
5. DDL statement 
6. inserted data sample
7. SQL(MNL)

*/

/* 
_______________________________________
*/
-- DDL statement
CREATE TABLE  "EMPLOYEES"
   (    "EMPLOYEE_ID" NUMBER(6,0),
    "FIRST_NAME" VARCHAR2(20),
    "LAST_NAME" VARCHAR2(25) CONSTRAINT "EMP_LAST_NAME_NN" NOT NULL ENABLE,
    "EMAIL" VARCHAR2(25) CONSTRAINT "EMP_EMAIL_NN" NOT NULL ENABLE,
    "PHONE_NUMBER" VARCHAR2(20),
    "HIRE_DATE" DATE CONSTRAINT "EMP_HIRE_DATE_NN" NOT NULL ENABLE,
    "JOB_ID" VARCHAR2(10) CONSTRAINT "EMP_JOB_NN" NOT NULL ENABLE,
    "SALARY" NUMBER(8,2),
    "COMMISSION_PCT" NUMBER(2,2),
    "MANAGER_ID" NUMBER(6,0),
    "DEPARTMENT_ID" NUMBER(4,0),
     CONSTRAINT "EMP_SALARY_MIN" CHECK (salary > 0) ENABLE,
     CONSTRAINT "EMP_EMAIL_UK" UNIQUE ("EMAIL") ENABLE,
     CONSTRAINT "EMP_EMP_ID_PK" PRIMARY KEY ("EMPLOYEE_ID") ENABLE,
     CONSTRAINT "EMP_DEPT_FK" FOREIGN KEY ("DEPARTMENT_ID")
      REFERENCES  "DEPARTMENTS" ("DEPARTMENT_ID") ENABLE,
     CONSTRAINT "EMP_JOB_FK" FOREIGN KEY ("JOB_ID")
      REFERENCES  "JOBS" ("JOB_ID") ENABLE,
     CONSTRAINT "EMP_MANAGER_FK" FOREIGN KEY ("MANAGER_ID")
      REFERENCES  "EMPLOYEES" ("EMPLOYEE_ID") ENABLE
   )


/*
_______________________________________ 
-- inserted data sample

EMPLOYEE_ID
FIRST_NAME
LAST_NAME
EMAIL
PHONE_NUMBER
HIRE_DATE
JOB_ID
SALARY
COMMISSION_PCT
MANAGER_ID
DEPARTMENT_ID
100
Steven
King
SKING
515.123.4567
17-JUN-87
AD_PRES
24000
-
-
90
101
Neena
Kochhar
NKOCHHAR
515.123.4568
21-SEP-89
AD_VP
17000
-
100
90
102
Lex
De Haan
LDEHAAN
515.123.4569
13-JAN-93
AD_VP
17000
-
100
90
103
Alexander
Hunold
AHUNOLD
590.423.4567
03-JAN-90
IT_PROG
9000
-
102
60
104
Bruce
Ernst
BERNST
590.423.4568
21-MAY-91
IT_PROG
6000
-
103
60
105
David
Austin
DAUSTIN
590.423.4569
25-JUN-97
IT_PROG
4800
-
103
60
 */
/* 

_______________________________________
-- SQL(MNL)
select *
from EMPLOYEES
*/


/* 
_______________________________________
    TASK - 01 
    FUNCTION EXAMPLE
    Counting the "EMPLOYEES" TABLE row
*/
DECLARE
	c NUMBER(10);
FUNCTION total
RETURN NUMBER IS
t_num NUMBER(10):=0;
BEGIN
	SELECT count(*) into t_num
	FROM EMPLOYEES;

Return t_num;
END;
BEGIN
	c:=total();
	dbms_output.put_line(c);
END;





/* 
_______________________________________
    TASK - 02
    FUNCTION EXAMPLE ( ARGUMENT TYPE FUNCTION )
    Two number input and max value return - (function name - fMax)
*/
DECLARE
	-- a NUMBER(10);
	-- b NUMBER(10);
	c NUMBER(10);
FUNCTION fMax(x IN NUMBER, y IN NUMBER)
RETURN NUMBER IS
t_num NUMBER(10):=0;
BEGIN
IF (x > y) THEN t_num:= x;
ELSE t_num:= y;
END IF;
RETURN t_num;

END;
BEGIN
	c:=fMax(10, 12);
	dbms_output.put_line(c);
END;
