{{config(materialized='view')}}
--created materialized view for ecommerce_sale,which is the base table for all the transformations.
SELECT *
FROM {{ref('ecommerce_sales')}}
