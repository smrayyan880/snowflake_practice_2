select c_custkey,c_name,c_address from {{ source('s1', 'tbl_customers') }}
inner join {{ source('s1', 'tbl_nation') }} on {{ source('s1', 'tbl_nation') }}.N_NATIONKEY={{ source('s1', 'tbl_customers') }}.C_NATIONKEY
WHERE {{ source('s1', 'tbl_nation') }}.n_name='CANADA';