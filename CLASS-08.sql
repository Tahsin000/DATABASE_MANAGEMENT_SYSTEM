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