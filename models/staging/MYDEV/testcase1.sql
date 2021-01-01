select DEPTNO,SUM(SAL) as total_sal from 
{{ref('cte1')}} 
group by DEPTNO
having not(total_sal) >7000