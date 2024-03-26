{% docs dbt_profiler_results__prod_domains_rds__create_ovine_categories  %}
| column_name     | data_type    |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------- | ------------ | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name         | varchar      | 35,139,510 |            1.000000 |              4 |     False | 2024-03-26 08:00:43.308 UTC |
| dt              | timestamp(6) | 35,139,510 |            1.000000 |             63 |     False | 2024-03-26 08:00:43.308 UTC |
| animal_id       | varchar      | 35,139,510 |            1.000000 |         557770 |     False | 2024-03-26 08:00:43.308 UTC |
| farm_id         | varchar      | 35,139,510 |            1.000000 |           3597 |     False | 2024-03-26 08:00:43.308 UTC |
| dob_date        | timestamp(6) | 35,139,510 |            1.000000 |           3605 |     False | 2024-03-26 08:00:43.308 UTC |
| moved_in_date   | timestamp(6) | 35,139,510 |            0.739371 |           3232 |     False | 2024-03-26 08:00:43.308 UTC |
| off_herd_date   | timestamp(6) | 35,139,510 |            0.238855 |           1814 |     False | 2024-03-26 08:00:43.308 UTC |
| dod_date        | timestamp(6) | 35,139,510 |            0.000000 |              0 |     False | 2024-03-26 08:00:43.308 UTC |
| sex             | varchar      | 35,139,510 |            1.000000 |              4 |     False | 2024-03-26 08:00:43.308 UTC |
| animal_type_id  | varchar      | 35,139,510 |            1.000000 |              2 |     False | 2024-03-26 08:00:43.308 UTC |
| purpose         | varchar      | 35,139,510 |            0.998560 |              5 |     False | 2024-03-26 08:00:43.308 UTC |
| ov_is_stock_ram | bigint       | 35,139,510 |            0.081600 |              2 |     False | 2024-03-26 08:00:43.308 UTC |
| animal_category | varchar      | 35,139,510 |            1.000000 |              5 |     False | 2024-03-26 08:00:43.308 UTC |
{% enddocs %}
