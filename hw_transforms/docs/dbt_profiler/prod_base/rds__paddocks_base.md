{% docs dbt_profiler_results__prod_base_rds__paddocks_base  %}
| column_name              | data_type        | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ---------------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                  | varchar          |   134,259 |            1.000000 |              4 |     False | 2024-02-15 16:26:27.402 UTC |
| paddock_id               | varchar          |   134,259 |            1.000000 |         133425 |     False | 2024-02-15 16:26:27.402 UTC |
| map_id                   | varchar          |   134,259 |            0.792520 |         106400 |     False | 2024-02-15 16:26:27.402 UTC |
| farm_id                  | varchar          |   134,259 |            1.000000 |          11331 |     False | 2024-02-15 16:26:27.402 UTC |
| paddock_created_datetime | timestamp(6)     |   134,259 |            1.000000 |         131110 |     False | 2024-02-15 16:26:27.402 UTC |
| paddock_name             | varchar          |   134,259 |            1.000000 |          82447 |     False | 2024-02-15 16:26:27.402 UTC |
| description              | varchar          |   134,259 |            1.000000 |           8071 |     False | 2024-02-15 16:26:27.402 UTC |
| ui_name                  | varchar          |   134,259 |            1.000000 |          19527 |     False | 2024-02-15 16:26:27.402 UTC |
| measure_flag             | bigint           |   134,259 |            1.000000 |              1 |     False | 2024-02-15 16:26:27.402 UTC |
| measure_order            | bigint           |   134,259 |            0.000015 |              2 |     False | 2024-02-15 16:26:27.402 UTC |
| area                     | double           |   134,259 |            1.000000 |           2936 |     False | 2024-02-15 16:26:27.402 UTC |
| area_cm                  | bigint           |   134,259 |            0.995412 |          17780 |     False | 2024-02-15 16:26:27.402 UTC |
| location_code            | varchar          |   134,259 |            0.078483 |           7346 |     False | 2024-02-15 16:26:27.402 UTC |
| silage_suitable          | bigint           |   134,259 |            1.000000 |              1 |     False | 2024-02-15 16:26:27.402 UTC |
| milk_flag                | bigint           |   134,259 |            1.000000 |              1 |     False | 2024-02-15 16:26:27.402 UTC |
| field_no                 | varchar          |   134,259 |            0.258538 |           4472 |     False | 2024-02-15 16:26:27.402 UTC |
| current_status_id        | varchar          |   134,259 |            0.036094 |              6 |     False | 2024-02-15 16:26:27.402 UTC |
| purpose_id               | varchar          |   134,259 |            0.099956 |              3 |     False | 2024-02-15 16:26:27.402 UTC |
| walk_order               | integer          |   134,259 |            0.000000 |              0 |     False | 2024-02-15 16:26:27.402 UTC |
| map_properties           | varchar          |   134,259 |            0.792520 |         106359 |     False | 2024-02-15 16:26:27.402 UTC |
| map_polygon              | row(wkb varchar) |   134,259 |            0.792520 |         106400 |     False | 2024-02-15 16:26:27.402 UTC |
{% enddocs %}
