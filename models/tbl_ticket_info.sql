{{
    config(
        materialized='table'
    )
}}
select *from {{ source('s1', 'tbl_tickets') }}