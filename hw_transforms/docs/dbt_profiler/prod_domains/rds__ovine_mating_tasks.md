{% docs dbt_profiler_results__prod_domains_rds__ovine_mating_tasks  %}
| column_name             | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                 | varchar      |    90,389 |            1.000000 |              4 |     False | 2024-03-26 08:03:14.892 UTC |
| task_id                 | varchar      |    90,389 |            1.000000 |           3491 |     False | 2024-03-26 08:03:14.892 UTC |
| farm_id                 | varchar      |    90,389 |            1.000000 |            747 |     False | 2024-03-26 08:03:14.892 UTC |
| task_type               | varchar      |    90,389 |            1.000000 |              1 |     False | 2024-03-26 08:03:14.892 UTC |
| record_belongs_to_app   | varchar      |    90,389 |            1.000000 |              1 |     False | 2024-03-26 08:03:14.892 UTC |
| animal_id               | varchar      |    90,389 |            0.581431 |          36633 |     False | 2024-03-26 08:03:14.892 UTC |
| record_date             | timestamp(6) |    90,389 |            1.000000 |            486 |     False | 2024-03-26 08:03:14.892 UTC |
| record_created_datetime | timestamp(6) |    90,389 |            1.000000 |           3370 |     False | 2024-03-26 08:03:14.892 UTC |
| ram_used_id             | varchar      |    90,389 |            1.000000 |           1774 |     False | 2024-03-26 08:03:14.892 UTC |
| raddle_color            | varchar      |    90,389 |            0.501189 |              7 |     False | 2024-03-26 08:03:14.892 UTC |
| animals_linked_flag     | bigint       |    90,389 |            1.000000 |              2 |     False | 2024-03-26 08:03:14.892 UTC |
| no_of_ewes_unlinked     | bigint       |    90,389 |            0.383996 |             84 |     False | 2024-03-26 08:03:14.892 UTC |
{% enddocs %}
