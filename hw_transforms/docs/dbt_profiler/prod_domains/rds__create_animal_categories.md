{% docs dbt_profiler_results__prod_domains_rds__create_animal_categories  %}
| column_name     | data_type    |   row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------- | ------------ | ----------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name         | varchar      | 635,978,700 |            1.000000 |              4 |     False | 2023-10-07 12:04:55.796 UTC |
| dt              | timestamp(6) | 635,978,700 |            1.000000 |             58 |     False | 2023-10-07 12:04:55.796 UTC |
| animal_id       | varchar      | 635,978,700 |            1.000000 |     10,965,150 |     False | 2023-10-07 12:04:55.796 UTC |
| farm_id         | varchar      | 635,978,700 |            1.000000 |         25,838 |     False | 2023-10-07 12:04:55.796 UTC |
| dob_date        | timestamp(6) | 635,978,700 |            1.000000 |          9,061 |     False | 2023-10-07 12:04:55.796 UTC |
| moved_in_date   | timestamp(6) | 635,978,700 |            0.662982 |          8,062 |     False | 2023-10-07 12:04:55.796 UTC |
| off_herd_date   | timestamp(6) | 635,978,700 |            0.678948 |          4,357 |     False | 2023-10-07 12:04:55.796 UTC |
| dod_date        | timestamp(6) | 635,978,700 |            0.014173 |          3,116 |     False | 2023-10-07 12:04:55.796 UTC |
| sex             | varchar      | 635,978,700 |            1.000000 |              5 |     False | 2023-10-07 12:04:55.796 UTC |
| animal_category | varchar      | 635,978,700 |            1.000000 |              6 |     False | 2023-10-07 12:04:55.796 UTC |
{% enddocs %}
