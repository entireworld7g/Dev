with my_cte3 as 
 (
 
 SELECT ENAME||' '||LASTNAME AS EMPLOYEE_NAME
 
 FROM ENS.MYDEV.EMP)


 select * from my_cte3