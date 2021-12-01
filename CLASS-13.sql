/* 
--  TASK - 01
____________________________________________________________________
 */
DECLARE
    msg clob:='A database is an organized collection of structured information, or data, typically stored electronically in a computer system. A database is usually controlled by a database management system (DBMS). The data can then be easily accessed, managed, modified, updated, controlled, and organized.';
BEGIN 
    DBMS_OUTPUT.PUT_LINE(msg);
/* 
--  TASK - 02
____________________________________________________________________ 
*/
DECLARE
    msg clob:='A database is an organized collection of structured information, or data, typically stored electronically in a computer system. A database is usually controlled by a database management system (DBMS). The data can then be easily accessed, managed, modified, updated, controlled, and organized.';
BEGIN 
    DBMS_OUTPUT.PUT_LINE(upper(msg));
END;


/* --  TASK - 03
____________________________________________________________________
 */
DECLARE
    msg clob:='A database is an organized collection of structured information, or data, typically stored electronically in a computer system. A database is usually controlled by a database management system (DBMS). The data can then be easily accessed, managed, modified, updated, controlled, and organized.';
BEGIN 
    DBMS_OUTPUT.PUT_LINE(lower(msg));
END;

/* -- TASK - 04
____________________________________________________________________
 */

DECLARE
    msg clob:='International Islamic University Chittagong';
    msg1 varchar2(100):= 'Islamic Department of CSE';
BEGIN
    IF(instr(msg,'Islamic'))>0 THEN
        DBMS_OUTPUT.PUT_LINE('Found LINE_01');
    ELSIF(instr(msg1,'Islamic'))>0 THEN
        DBMS_OUTPUT.PUT_LINE('Found LINE_02'); 
    ELSE    
        DBMS_OUTPUT.PUT_LINE('NOT Found'); 
     
END IF;
END;

/* --TASK - 05
____________________________________________________________________
 */

DECLARE 
  cnt NUMBER;
  CURSOR cur_emp IS
  SELECT *
  FROM EMPLOYEES
  WHERE SALARY > 5000;
  v_emp_rec EMPLOYEES%ROWTYPE;
BEGIN
  cnt:= 0;
  OPEN cur_emp;
  LOOP
    fetch cur_emp into v_emp_rec;
    cnt:= cnt + 1;
    EXIT when CUR_emp%notfound;
    DBMS_OUTPUT.PUT_LINE(cnt || '. NAME : '|| v_emp_rec.FIRST_NAME|| ' ' || v_emp_rec.LAST_NAME);
  END LOOP;
  close cur_emp;
END;