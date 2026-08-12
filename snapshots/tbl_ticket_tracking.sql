{% snapshot tbl_ticket_tracking %}
    {{
        config(
            target_schema='dbt_schema',
            target_database='dbt_customers',
            unique_key='t_no',
            strategy='check',
            check_cols=['status']
        )
    }}

    select * from {{ source('s1', 'tbl_tickets') }}
 {% endsnapshot %}