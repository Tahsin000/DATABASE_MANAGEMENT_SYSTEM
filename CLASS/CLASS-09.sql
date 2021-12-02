-- Task - 01
DECLARE 
  sales number:= 10000;
BEGIN
IF sales > 7000 then 
dbms_output.put_line('sales is larger than 7000');
END IF;
END;

-- Task - 02
DECLARE 
  sales number:= 5000;
BEGIN
IF sales > 7000 then 
    dbms_output.put_line('sales is > than 7000');
ELSIF sales < 7000 then
    dbms_output.put_line('sales is < than 7000');

END if;
END;

-- Task - 03
DECLARE
   x integer(10):=:input;

BEGIN
    IF (x mod 2)=0 THEN
        dbms_output.put_line(x || ' is EVEN');
    ELSE
        dbms_output.put_line(x || ' is ODD'); 
  END IF;
END;

-- Task - 04
DECLARE 
    id varchar(20):='C193066';
    pin varchar(20):='123';
    iniD varchar(20):=upper(:ID);
    inpin varchar(20):=upper(:PIN);

BEGIN
IF (id like iniD) and (pin like inpin) THEN
    dbms_output.put_line('True');
ELSE
    dbms_output.put_line('false');
END IF ;
END;

