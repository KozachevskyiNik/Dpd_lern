{% docs dbt_profiler_results__prod_base_rds__paddocks_base  %}
| column_name              | data_type        | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ---------------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                  | varchar          |   132,164 |            1.000000 |              4 |     False | 2024-01-31 13:42:41.541 UTC |
| paddock_id               | varchar          |   132,164 |            1.000000 |         131337 |     False | 2024-01-31 13:42:41.541 UTC |
| map_id                   | varchar          |   132,164 |            0.788989 |         104273 |     False | 2024-01-31 13:42:41.541 UTC |
| farm_id                  | varchar          |   132,164 |            1.000000 |          11208 |     False | 2024-01-31 13:42:41.541 UTC |
| paddock_created_datetime | timestamp(6)     |   132,164 |            1.000000 |         129052 |     False | 2024-01-31 13:42:41.541 UTC |
| paddock_name             | varchar          |   132,164 |            1.000000 |          81084 |     False | 2024-01-31 13:42:41.541 UTC |
| description              | varchar          |   132,164 |            1.000000 |           8019 |     False | 2024-01-31 13:42:41.541 UTC |
| ui_name                  | varchar          |   132,164 |            1.000000 |          19560 |     False | 2024-01-31 13:42:41.541 UTC |
| measure_flag             | bigint           |   132,164 |            1.000000 |              1 |     False | 2024-01-31 13:42:41.541 UTC |
| measure_order            | bigint           |   132,164 |            0.000015 |              2 |     False | 2024-01-31 13:42:41.541 UTC |
| area                     | double           |   132,164 |            1.000000 |           2912 |     False | 2024-01-31 13:42:41.541 UTC |
| area_cm                  | bigint           |   132,164 |            0.995309 |          16181 |     False | 2024-01-31 13:42:41.541 UTC |
| location_code            | varchar          |   132,164 |            0.079371 |           7316 |     False | 2024-01-31 13:42:41.541 UTC |
| silage_suitable          | bigint           |   132,164 |            1.000000 |              1 |     False | 2024-01-31 13:42:41.541 UTC |
| milk_flag                | bigint           |   132,164 |            1.000000 |              1 |     False | 2024-01-31 13:42:41.541 UTC |
| field_no                 | varchar          |   132,164 |            0.258247 |           4413 |     False | 2024-01-31 13:42:41.541 UTC |
| current_status_id        | varchar          |   132,164 |            0.031378 |              6 |     False | 2024-01-31 13:42:41.541 UTC |
| purpose_id               | varchar          |   132,164 |            0.094073 |              3 |     False | 2024-01-31 13:42:41.541 UTC |
| walk_order               | integer          |   132,164 |            0.000000 |              0 |     False | 2024-01-31 13:42:41.541 UTC |
| map_properties           | varchar          |   132,164 |            0.788989 |         104231 |     False | 2024-01-31 13:42:41.541 UTC |
| map_polygon              | row(wkb varchar) |   132,164 |            0.788989 |         104273 |     False | 2024-01-31 13:42:41.541 UTC |
{% enddocs %}
