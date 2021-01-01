 

WITH cte1 AS 
(
  SELECT * FROM {{ref('cte1')}}
)
,
cte2 AS
(

select * from {{ref('cte2')}}

),

final as(

select cte1.EMPLOYEE_NAME as ENAME
,cte1.DEPTNO
,cte1.sal
,cte2.DNAME
,cte2.MAX_SAL
from cte1 join cte2 
on cte1.DEPTNO=cte2.DEPTNO

)


select * from final