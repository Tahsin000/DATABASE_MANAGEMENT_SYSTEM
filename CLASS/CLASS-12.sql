/* 
    DATE : 24.11.2021
 */
/* 
__________________________________________________________
-- TASK - 01
 */
DECLARE
    a number;
    b number;
    c number;
PROCEDURE fmin(x IN number, y IN number , z OUT number) IS
BEGIN
    IF x < y THEN
        z:=x;
    ELSE
        z:=x;
    END IF;
END;
BEGIN
    a:=22;
    b:=33;
    fmin(a, b, c);
DBMS_OUTPUT.PUT_LINE(c);
END;

/* 
__________________________________________________________
TEST - 02
 */
CREATE or REPLACE PROCEDURE TEST AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('OUR FIRST PROCEDURE');
END;

/* 
__________________________________________________________
TEST - 03
 */
DECLARE
PROCEDURE TEST(X IN NUMBER) IS
EMPLOYEE_ID    NUMBER(6,0);
    FNAME  	 EMPLOYEES.FIRST_NAME%type; -- assigning data structure to local variable
    LNAME  	 EMPLOYEES.LAST_NAME%type; -- assigning data structure to local variable
    JID   		 EMPLOYEES.JOB_ID%type; -- assigning data structure to local variable
    ESALARY   	 EMPLOYEES.SALARY%type; -- assigning data structure to local variable
BEGIN
    SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY INTO EMPLOYEE_ID, FNAME,LNAME, JID, ESALARY      		 
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = X;
    DBMS_OUTPUT.PUT_LINE('Details of EMPLOYEE ');
    DBMS_OUTPUT.PUT_LINE('EMPLOYEE_ID : ' || EMPLOYEE_ID);
    DBMS_OUTPUT.PUT_LINE('FIRST_NAME : ' || FNAME);
    DBMS_OUTPUT.PUT_LINE('JOB_ID : ' || JID);
    DBMS_OUTPUT.PUT_LINE('SALARY : ' || ESALARY);
END;
 
BEGIN
    TEST(101);
END;

/* 
__________________________________________________________
TASK - 04
 */
DECLARE
    CURSOR cur_emp_name IS
    SELECT *
    FROM employees;
    v_emp_rec employees%ROWTYPE;

BEGIN
    OPEN cur_emp_name;
        LOOP
            FETCH cur_emp_name INTO v_emp_rec ;
            EXIT WHEN cur_emp_name%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp_rec.first_name||'::salary' || v_emp_rec.salary);
        END LOOP;
    CLOSE cur_emp_name;
END;

/*
__________________________________________________________
TASK - 05 ( ALL INFO SHOW WHERE JOB_ID= 'IT_PROG' )
 */
DECLARE
    CURSOR cur_emp_name IS
    SELECT *
    FROM employees
    WHERE JOB_ID= 'IT_PROG';
    v_emp_rec employees%ROWTYPE;
BEGIN
    OPEN cur_emp_name;
        LOOP
            FETCH cur_emp_name INTO v_emp_rec ;
            EXIT WHEN cur_emp_name%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp_rec.first_name||'  :: salary  ' || v_emp_rec.salary);
        END LOOP;
    CLOSE cur_emp_name;
END;

/* 
TASK - 06 _ PART _ (01)
__________________________________________________________
*/
CREATE OR REPLACE FORCE VIEW  "NEW_TABLE" ("FIRST_NAME", "DEPARTMENT_NAME") AS 
    SELECT EMPLOYEES.FIRST_NAME , DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES,DEPARTMENTS
WHERE EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID

/* 
TASK - 06 _ PART _ (02) __ (EMPLOYEES ALL DEPARTMENT INFO SHOW)
__________________________________________________________
*/
 
DECLARE
    CURSOR cur_emp_name IS
    SELECT *
    FROM NEW_TABLE;
    v_emp_rec NEW_TABLE%ROWTYPE;
BEGIN
    OPEN cur_emp_name;
        LOOP
            FETCH cur_emp_name INTO v_emp_rec;
            EXIT WHEN cur_emp_name%NOTFOUND;
            dbms_output.put_line('NAME: ' || v_emp_rec.FIRST_NAME || '  --- DEPARTMENT NAME: ' || v_emp_rec.DEPARTMENT_NAME);
        END LOOP;
    CLOSE cur_EMP_NAME;
END;
