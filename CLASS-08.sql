    -- • Find the patient details who have seen the same doctor as ‘X’
        -- ◦ Ans : 
		select *
		from PATIENT natural join TREATMENT
		where P_ID IN (
		select D_ID
		from TREATMENT natural join PATIENT 
		where P_NAME = 'Sakib');

    -- • Find the total number of doctor fee ?
        -- ◦ Ans : 
		select sum(fee)
		from DOCTOR natural join TREATMENT 
		where D_ID = 102

    -- • Find the fix date doctor fee ?
            -- ◦ Ans : 
		select FEE
		from DOCTOR natural join TREATMENT 
		where D_ID = 102 and T_DATA = '10-JAN-21'

-- PL-SQL
-- TEST _ 01
DECLARE
BEGIN
	dbms_output.put_line('IIUC_CSE');
END;

-- TEST _ 02

DECLARE
a integer(10):=15;
b number(10,2):=25.6;
c float;

BEGIN 
	c:= a + b;
	dbms_output.put_line('The result of addition is : ' || c); 
END;

-- TASK _ 03 { user input  }

DECLARE
a integer(10):=15;
b number(10,2):=25.6;
c float;
pnt varchar(20);
BEGIN 
	pnt:=:input;
	c:= a + b;
	dbms_output.put_line('WELCOME TO ' || pnt);
	dbms_output.put_line('The result of addition is : ' || c); 
END;

-- TASK _ 04 { Double precision }

DECLARE
d double precision;
a integer(10):=15;
b number(10, 2):=25.6;
c float;
BEGIN 
	c:= a + b;
	d:= a / c;
	dbms_output.put_line('Double precision ' || d); 
END;