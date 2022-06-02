{{ config(materialized='table') }}

select nav_date, table4.code as code, table4.maximum from "ANALYTICS"."DBT"."NAVHISTORY" table3 join

(select table1.code as code, max(table2.nav) as maximum from "ANALYTICS"."DBT"."MUTUALFUND" table1 join

 "ANALYTICS"."DBT"."NAVHISTORY" table2 on table1.code=table2.code group by table1.code) table4

where table3.code=table4.code and table3.nav=table4.maximum
