select
      max(updated_at) as max_loaded_at,
      convert_timezone('UTC', current_timestamp()) as snapshotted_at
    from raw.globalmart.order_example_1