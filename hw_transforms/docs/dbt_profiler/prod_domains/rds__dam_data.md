{% docs dbt_profiler_results__prod_domains_rds__dam_data  %}
| column_name        | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 7,608,624 |            1.000000 |              4 |     False | 2024-03-26 08:01:09.662 UTC |
| child_id           | varchar      | 7,608,624 |            1.000000 |        7608624 |      True | 2024-03-26 08:01:09.662 UTC |
| child_dob          | timestamp(6) | 7,608,624 |            1.000000 |          12492 |     False | 2024-03-26 08:01:09.662 UTC |
| species            | varchar      | 7,608,624 |            1.000000 |              2 |     False | 2024-03-26 08:01:09.662 UTC |
| child_sex          | varchar      | 7,608,624 |            1.000000 |              4 |     False | 2024-03-26 08:01:09.662 UTC |
| child_tag          | varchar      | 7,608,624 |            1.000000 |        7367282 |     False | 2024-03-26 08:01:09.662 UTC |
| child_breed        | varchar      | 7,608,624 |            1.000000 |            280 |     False | 2024-03-26 08:01:09.662 UTC |
| child_reg_date     | timestamp(6) | 7,608,624 |            0.427733 |        3111533 |     False | 2024-03-26 08:01:09.662 UTC |
| dam_id             | varchar      | 7,608,624 |            1.000000 |        3782909 |     False | 2024-03-26 08:01:09.662 UTC |
| dam_sex            | varchar      | 7,608,624 |            1.000000 |              4 |     False | 2024-03-26 08:01:09.662 UTC |
| dam_tag            | varchar      | 7,608,624 |            1.000000 |        3490026 |     False | 2024-03-26 08:01:09.662 UTC |
| dam_breed          | varchar      | 7,608,624 |            1.000000 |            262 |     False | 2024-03-26 08:01:09.662 UTC |
| dam_total_children | bigint       | 7,608,624 |            1.000000 |             37 |     False | 2024-03-26 08:01:09.662 UTC |
| dam_dob            | timestamp(6) | 7,608,624 |            1.000000 |          13638 |     False | 2024-03-26 08:01:09.662 UTC |
{% enddocs %}
