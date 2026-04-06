{{ config(materialized = 'table')}}

SELECT DISTINCT
    customer_id,
    customer_name,
    country
FROM {{ ref('sl_ecommerce_sales')}}
