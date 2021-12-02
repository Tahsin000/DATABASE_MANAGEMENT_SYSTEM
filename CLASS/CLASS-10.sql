/* 
    DATE : 10.11.2021
 */
-- TASK - 01
-- FOR LOOP
DECLARE
	i integer;
BEGIN
	-- basic for loop
	FOR i IN 1..10 LOOP
    	DBMS_OUTPUT.PUT_LINE('value of i is ' || i);
	END LOOP;
END;




-- TASK - 02 
DECLARE
	i integer;
BEGIN
	-- FOR LOOP
	FOR i IN 1..10 LOOP
    	IF (i mod 2)= 0 THEN
        	DBMS_OUTPUT.PUT_LINE('value of ' || i || ' is Even');
    	ELSE
        	DBMS_OUTPUT.PUT_LINE('value of ' || i || ' is Odd');
    	END IF;
	END LOOP;
END;





-- TASK - 03
DECLARE
	i integer:=10;
BEGIN
	WHILE
    	-- While loop
    	i <= 20 LOOP
    	DBMS_OUTPUT.PUT_LINE('value of ' || i );
    	i := i+1;
	END LOOP;
END;




-- TASK - 04
DECLARE
	i integer:=10;
BEGIN
	LOOP
    	-- Basic loop
    	DBMS_OUTPUT.PUT_LINE('value of i is ' || i);
    	i := i + 10;
    	IF i > 100 THEN
        	EXIT;
    	END IF;
	END LOOP;
END;





-- TASK - 05
DECLARE
	id varchar(10):='ASD';
	pass varchar(10):='12';
	input_id varchar(10);
	i NUMBER(2):=0;
	input_pass varchar(10);
BEGIN
    	input_id:=upper(:ID);
    	input_pass:=:PIN;

    	IF(input_id = id AND input_pass = pass) THEN
        	DBMS_OUTPUT.PUT_LINE('TRUE');
    	ELSE
        	DBMS_OUTPUT.PUT_LINE('FALSE');
    	END IF;
END;



-- TASK - 06
DECLARE
	EMPLOYEE_ID	NUMBER(6,0);
	FNAME   	EMPLOYEES.FIRST_NAME%type; -- assigning data structure to local variable
	LNAME   	EMPLOYEES.LAST_NAME%type; -- assigning data structure to local variable
	JID        	EMPLOYEES.JOB_ID%type; -- assigning data structure to local variable
	ESALARY    	EMPLOYEES.SALARY%type; -- assigning data structure to local variable
BEGIN
	SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY INTO EMPLOYEE_ID, FNAME,LNAME, JID, ESALARY           	 
	FROM EMPLOYEES
	WHERE EMPLOYEE_ID = 101;
	DBMS_OUTPUT.PUT_LINE('Details of EMPLOYEE ');
	DBMS_OUTPUT.PUT_LINE('EMPLOYEE_ID : ' || EMPLOYEE_ID);
	DBMS_OUTPUT.PUT_LINE('FIRST_NAME : ' || FNAME);
	--DBMS_OUTPUT.PUT_LINE('');
	DBMS_OUTPUT.PUT_LINE('JOB_ID : ' || JID);
	DBMS_OUTPUT.PUT_LINE('SALARY : ' || ESALARY);
END;



-- TASK - 07
DECLARE
	ID         	EMPLOYEES.EMPLOYEE_ID%type;
	FNAME   	EMPLOYEES.FIRST_NAME%type;
	LNAME   	EMPLOYEES.LAST_NAME%type;
	JID        	EMPLOYEES.JOB_ID%type;
	ESALARY    	EMPLOYEES.SALARY%type;
BEGIN
	SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY INTO ID, FNAME,LNAME, JID, ESALARY           	 
	FROM EMPLOYEES
	WHERE JOB_ID = 'SA_REP' AND EMPLOYEE_ID = 110;
	DBMS_OUTPUT.PUT_LINE('Details of EMPLOYEE ');
	DBMS_OUTPUT.PUT_LINE('EMPLOYEE_ID : ' || ID);
	DBMS_OUTPUT.PUT_LINE('FIRST_NAME : ' || FNAME);
	--DBMS_OUTPUT.PUT_LINE('');
	DBMS_OUTPUT.PUT_LINE('JOB_ID : ' || JID);
	DBMS_OUTPUT.PUT_LINE('SALARY : ' || ESALARY);
END;


