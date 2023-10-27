{% docs dbt_profiler_results__prod_domains_rds__create_animal_categories  %}
| column_name     | data_type    |   row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------- | ------------ | ----------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name         | varchar      | 623,422,860 |            1.000000 |              3 |     False | 2023-10-26 15:18:58.926 UTC |
| dt              | timestamp(6) | 623,422,860 |            1.000000 |             58 |     False | 2023-10-26 15:18:58.926 UTC |
| animal_id       | varchar      | 623,422,860 |            1.000000 |       10748670 |     False | 2023-10-26 15:18:58.926 UTC |
| farm_id         | varchar      | 623,422,860 |            1.000000 |          23988 |     False | 2023-10-26 15:18:58.926 UTC |
| dob_date        | timestamp(6) | 623,422,860 |            1.000000 |           9020 |     False | 2023-10-26 15:18:58.926 UTC |
| moved_in_date   | timestamp(6) | 623,422,860 |            0.779967 |           8125 |     False | 2023-10-26 15:18:58.926 UTC |
| off_herd_date   | timestamp(6) | 623,422,860 |            0.696774 |           3778 |     False | 2023-10-26 15:18:58.926 UTC |
| dod_date        | timestamp(6) | 623,422,860 |            0.014679 |           3084 |     False | 2023-10-26 15:18:58.926 UTC |
| sex             | varchar      | 623,422,860 |            1.000000 |              4 |     False | 2023-10-26 15:18:58.926 UTC |
| animal_type_id  | varchar      | 623,422,860 |            1.000000 |              2 |     False | 2023-10-26 15:18:58.926 UTC |
| animal_category | varchar      | 623,422,860 |            1.000000 |              6 |     False | 2023-10-26 15:18:58.926 UTC |
{% enddocs %}
