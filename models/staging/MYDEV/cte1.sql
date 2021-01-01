with my_cte1 as 
 (
 
 SELECT ENAME||' '||LASTNAME AS EMPLOYEE_NAME
 ,EMPNO
 ,DEPTNO
 ,SAL
 FROM ENS.MYDEV.EMP)


 select * from my_cte1