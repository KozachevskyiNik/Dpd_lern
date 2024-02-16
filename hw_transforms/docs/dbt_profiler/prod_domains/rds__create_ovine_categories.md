{% docs dbt_profiler_results__prod_domains_rds__create_ovine_categories  %}
| column_name     | data_type    |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------- | ------------ | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name         | varchar      | 30,352,844 |            1.000000 |              4 |     False | 2024-02-15 16:32:22.098 UTC |
| dt              | timestamp(6) | 30,352,844 |            1.000000 |             62 |     False | 2024-02-15 16:32:22.098 UTC |
| animal_id       | varchar      | 30,352,844 |            1.000000 |         489562 |     False | 2024-02-15 16:32:22.098 UTC |
| farm_id         | varchar      | 30,352,844 |            1.000000 |           3449 |     False | 2024-02-15 16:32:22.098 UTC |
| dob_date        | timestamp(6) | 30,352,844 |            1.000000 |           3527 |     False | 2024-02-15 16:32:22.098 UTC |
| moved_in_date   | timestamp(6) | 30,352,844 |            0.716481 |           3131 |     False | 2024-02-15 16:32:22.098 UTC |
| off_herd_date   | timestamp(6) | 30,352,844 |            0.237668 |           1768 |     False | 2024-02-15 16:32:22.098 UTC |
| dod_date        | timestamp(6) | 30,352,844 |            0.000000 |              0 |     False | 2024-02-15 16:32:22.098 UTC |
| sex             | varchar      | 30,352,844 |            1.000000 |              4 |     False | 2024-02-15 16:32:22.098 UTC |
| animal_type_id  | varchar      | 30,352,844 |            1.000000 |              2 |     False | 2024-02-15 16:32:22.098 UTC |
| purpose         | varchar      | 30,352,844 |            0.998564 |              5 |     False | 2024-02-15 16:32:22.098 UTC |
| ov_is_stock_ram | bigint       | 30,352,844 |            0.090434 |              2 |     False | 2024-02-15 16:32:22.098 UTC |
| animal_category | varchar      | 30,352,844 |            1.000000 |              5 |     False | 2024-02-15 16:32:22.098 UTC |
{% enddocs %}
