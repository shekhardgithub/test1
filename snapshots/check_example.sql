{% snapshot customers_snapshot_check %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='id',
          check_cols=['ALL']
        )
    }}

    select * from {{ source('jaffle_shop', 'customers') }}

{% endsnapshot %} 