{{ config(materialized='table') }}

select nav_date, t4.code as code, t4.maximum from "ANALYTICS"."DBT"."NAVHISTORY" t3 join

(select t1.code as code, max(t2.nav) as maximum from "ANALYTICS"."DBT"."MUTUALFUND" t1 join

 "ANALYTICS"."DBT"."NAVHISTORY" t2 on t1.code=t2.code group by t1.code) t4

where t3.code=t4.code and t3.nav=t4.maximum
