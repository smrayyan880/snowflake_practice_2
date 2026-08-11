{{
    config(
        materialized='table',
        transient=false
    )
}}
select c_custkey,c_name,c_address from {{ source('s1', 'tbl_customer') }}