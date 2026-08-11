select c_custkey,c_name,c_address from dbt_customers.dbt_schema.tbl_customer
inner join dbt_customers.dbt_schema.tbl_nation on tbl_nation.N_NATIONKEY=tbl_customer.C_NATIONKEY
WHERE tbl_nation.n_name='INDIA'