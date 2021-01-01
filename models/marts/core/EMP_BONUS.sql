{{ config(
materialized='table'
) }}

WITH cte1 AS 
(
  SELECT * FROM {{ref('cte1')}}
),
final as(
select EMPLOYEE_NAME,
EMPNO,
DEPTNO,
SAL,
0.08*SAL as BONUS from cte1
)
select * from final