{% snapshot tbl_bus_ticket_tracking %}
    {{
        config(
            target_schema='dbt_schema',
            target_database='dbt_customers',
            unique_key='ticket_no',
            strategy='check',
            check_cols=['status_name']

        )
    }}

    select * from {{ source('s1', 'tbl_bus_tickets') }}
 {% endsnapshot %}