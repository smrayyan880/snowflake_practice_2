{{
    config(
        materialized='table',
        transient=false
    )
}}
select c_custkey,c_name,c_address from {{ source('s1', 'tbl_customer') }}
inner join {{ source('s1', 'tbl_nation') }} on {{ source('s1', 'tbl_nation') }}.N_NATIONKEY={{ source('s1', 'tbl_customer') }}.C_NATIONKEY
WHERE {{ source('s1', 'tbl_nation') }}.n_name='CANADA' limit 190