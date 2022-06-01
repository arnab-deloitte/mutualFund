{{ config(materialized='table') }}

select month(nav_date) as nav_month,code,avg(nav) as nav_avg, avg(repurchase_price)
as repurchase_avg,avg(sale_price) as
sale_avg from "ANALYTICS"."DBT"."NAVHISTORY" group by  code,nav,nav_month
