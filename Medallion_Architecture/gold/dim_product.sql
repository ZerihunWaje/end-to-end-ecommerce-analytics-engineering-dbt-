{{config (materialized='table')}}

SELECT DISTINCT
    product_id,
    product_category
FROM {{ ref('sl_ecommerce_sales')}}
