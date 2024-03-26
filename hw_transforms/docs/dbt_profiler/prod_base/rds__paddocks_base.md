{% docs dbt_profiler_results__prod_base_rds__paddocks_base  %}
| column_name              | data_type        | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------ | ---------------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                  | varchar          |   138,787 |            1.000000 |              4 |     False | 2024-03-25 13:08:39.387 UTC |
| paddock_id               | varchar          |   138,787 |            1.000000 |         137924 |     False | 2024-03-25 13:08:39.387 UTC |
| map_id                   | varchar          |   138,787 |            0.799808 |         111000 |     False | 2024-03-25 13:08:39.387 UTC |
| farm_id                  | varchar          |   138,787 |            1.000000 |          11622 |     False | 2024-03-25 13:08:39.387 UTC |
| paddock_created_datetime | timestamp(6)     |   138,787 |            1.000000 |         135574 |     False | 2024-03-25 13:08:39.387 UTC |
| paddock_name             | varchar          |   138,787 |            1.000000 |          85076 |     False | 2024-03-25 13:08:39.387 UTC |
| description              | varchar          |   138,787 |            1.000000 |           8191 |     False | 2024-03-25 13:08:39.387 UTC |
| ui_name                  | varchar          |   138,787 |            1.000000 |          19488 |     False | 2024-03-25 13:08:39.387 UTC |
| measure_flag             | bigint           |   138,787 |            1.000000 |              1 |     False | 2024-03-25 13:08:39.387 UTC |
| measure_order            | bigint           |   138,787 |            0.000014 |              2 |     False | 2024-03-25 13:08:39.387 UTC |
| area                     | double           |   138,787 |            1.000000 |           3006 |     False | 2024-03-25 13:08:39.387 UTC |
| area_cm                  | bigint           |   138,787 |            0.995720 |          21119 |     False | 2024-03-25 13:08:39.387 UTC |
| location_code            | varchar          |   138,787 |            0.076210 |           7375 |     False | 2024-03-25 13:08:39.387 UTC |
| silage_suitable          | bigint           |   138,787 |            1.000000 |              1 |     False | 2024-03-25 13:08:39.387 UTC |
| milk_flag                | bigint           |   138,787 |            1.000000 |              1 |     False | 2024-03-25 13:08:39.387 UTC |
| field_no                 | varchar          |   138,787 |            0.259679 |           4706 |     False | 2024-03-25 13:08:39.387 UTC |
| current_status_id        | varchar          |   138,787 |            0.047951 |              6 |     False | 2024-03-25 13:08:39.387 UTC |
| purpose_id               | varchar          |   138,787 |            0.115544 |              3 |     False | 2024-03-25 13:08:39.387 UTC |
| walk_order               | integer          |   138,787 |            0.000000 |              0 |     False | 2024-03-25 13:08:39.387 UTC |
| map_properties           | varchar          |   138,787 |            0.799808 |         110959 |     False | 2024-03-25 13:08:39.387 UTC |
| map_polygon              | row(wkb varchar) |   138,787 |            0.799808 |         111000 |     False | 2024-03-25 13:08:39.387 UTC |
{% enddocs %}
