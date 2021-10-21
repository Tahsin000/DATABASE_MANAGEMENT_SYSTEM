-- Test-01
Select * 
from DOCTOR

-- Test-02
Select * 
from PATIENT

-- Test-03
Select * 
from TEST

-- Test-04
Select * 
from TREATMENT

-- Problem_01
-- Fine the PATIENT details DOCTOR 101
Select P_ID, P_NAME, ADDRESS, MOBILE, DOB, GENDER
from TREATMENT natural join PATIENT
where D_ID = 101;

