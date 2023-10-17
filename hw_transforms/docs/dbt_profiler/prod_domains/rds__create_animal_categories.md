{% docs dbt_profiler_results__prod_domains_rds__create_animal_categories  %}
| column_name     | data_type    |   row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------- | ------------ | ----------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name         | varchar      | 636,153,802 |            1.000000 |              4 |     False | 2023-10-17 14:46:29.582 UTC |
| dt              | timestamp(6) | 636,153,802 |            1.000000 |             58 |     False | 2023-10-17 14:46:29.582 UTC |
| animal_id       | varchar      | 636,153,802 |            1.000000 |       10968169 |     False | 2023-10-17 14:46:29.582 UTC |
| farm_id         | varchar      | 636,153,802 |            1.000000 |          25845 |     False | 2023-10-17 14:46:29.582 UTC |
| dob_date        | timestamp(6) | 636,153,802 |            1.000000 |           9063 |     False | 2023-10-17 14:46:29.582 UTC |
| moved_in_date   | timestamp(6) | 636,153,802 |            0.663199 |           8063 |     False | 2023-10-17 14:46:29.582 UTC |
| off_herd_date   | timestamp(6) | 636,153,802 |            0.679145 |           4358 |     False | 2023-10-17 14:46:29.582 UTC |
| dod_date        | timestamp(6) | 636,153,802 |            0.014182 |           3117 |     False | 2023-10-17 14:46:29.582 UTC |
| sex             | varchar      | 636,153,802 |            1.000000 |              5 |     False | 2023-10-17 14:46:29.582 UTC |
| animal_category | varchar      | 636,153,802 |            1.000000 |              6 |     False | 2023-10-17 14:46:29.582 UTC |
{% enddocs %}
