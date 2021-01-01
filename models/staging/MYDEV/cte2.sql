 
 with MY_CTE2 AS
 (
 SELECT
 d.DEPTNO,
    d.dname,
    max(c.sal) as MAX_SAL
 FROM ENS.MYDEV.EMP C   JOIN ENS.MYDEV.DEPT D
   ON C.DEPTNO=D.DEPTNO
   group by d.DEPTNO,d.dname
 )

 select * from my_cte2