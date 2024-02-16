{% docs dbt_profiler_results__prod_marts_mart__get_counts_of_stock  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                        | varchar      | 1,561,470 |                   1 |              4 |     False | 2024-02-15 16:38:01.251 UTC |
| reconciliation_month           | timestamp(6) | 1,561,470 |                   1 |             62 |     False | 2024-02-15 16:38:01.251 UTC |
| farm_id                        | varchar      | 1,561,470 |                   1 |          25185 |     False | 2024-02-15 16:38:01.251 UTC |
| under_6_start_of_month         | bigint       | 1,561,470 |                   1 |            818 |     False | 2024-02-15 16:38:01.251 UTC |
| under_6_born_in_month          | bigint       | 1,561,470 |                   1 |            350 |     False | 2024-02-15 16:38:01.251 UTC |
| under_6_bought_in_month        | bigint       | 1,561,470 |                   1 |            394 |     False | 2024-02-15 16:38:01.251 UTC |
| under_6_sold_in_month          | bigint       | 1,561,470 |                   1 |            366 |     False | 2024-02-15 16:38:01.251 UTC |
| under_6_died_in_month          | bigint       | 1,561,470 |                   1 |             42 |     False | 2024-02-15 16:38:01.251 UTC |
| under_6_end_of_month           | bigint       | 1,561,470 |                   1 |            817 |     False | 2024-02-15 16:38:01.251 UTC |
| under_6_net_transfer           | bigint       | 1,561,470 |                   1 |            330 |     False | 2024-02-15 16:38:01.251 UTC |
| between_7_12_start_of_month    | bigint       | 1,561,470 |                   1 |            688 |     False | 2024-02-15 16:38:01.251 UTC |
| between_7_12_bought_in_month   | bigint       | 1,561,470 |                   1 |            209 |     False | 2024-02-15 16:38:01.251 UTC |
| between_7_12_sold_in_month     | bigint       | 1,561,470 |                   1 |            204 |     False | 2024-02-15 16:38:01.251 UTC |
| between_7_12_died_in_month     | bigint       | 1,561,470 |                   1 |             17 |     False | 2024-02-15 16:38:01.251 UTC |
| between_7_12_end_of_month      | bigint       | 1,561,470 |                   1 |            686 |     False | 2024-02-15 16:38:01.251 UTC |
| between_7_12_net_transfer      | bigint       | 1,561,470 |                   1 |            530 |     False | 2024-02-15 16:38:01.251 UTC |
| between_13_18_start_of_month   | bigint       | 1,561,470 |                   1 |            635 |     False | 2024-02-15 16:38:01.251 UTC |
| between_13_18_bought_in_month  | bigint       | 1,561,470 |                   1 |            211 |     False | 2024-02-15 16:38:01.251 UTC |
| between_13_18_sold_in_month    | bigint       | 1,561,470 |                   1 |            197 |     False | 2024-02-15 16:38:01.251 UTC |
| between_13_18_died_in_month    | bigint       | 1,561,470 |                   1 |             18 |     False | 2024-02-15 16:38:01.251 UTC |
| between_13_18_end_of_month     | bigint       | 1,561,470 |                   1 |            635 |     False | 2024-02-15 16:38:01.251 UTC |
| between_13_18_net_transfer     | bigint       | 1,561,470 |                   1 |            512 |     False | 2024-02-15 16:38:01.251 UTC |
| between_19_24_start_of_month   | bigint       | 1,561,470 |                   1 |            643 |     False | 2024-02-15 16:38:01.251 UTC |
| between_19_24_bought_in_month  | bigint       | 1,561,470 |                   1 |            269 |     False | 2024-02-15 16:38:01.251 UTC |
| between_19_24_sold_in_month    | bigint       | 1,561,470 |                   1 |            261 |     False | 2024-02-15 16:38:01.251 UTC |
| between_19_24_died_in_month    | bigint       | 1,561,470 |                   1 |             28 |     False | 2024-02-15 16:38:01.251 UTC |
| between_19_24_end_of_month     | bigint       | 1,561,470 |                   1 |            640 |     False | 2024-02-15 16:38:01.251 UTC |
| between_19_24_net_transfer     | bigint       | 1,561,470 |                   1 |            479 |     False | 2024-02-15 16:38:01.251 UTC |
| male_over_25_start_of_month    | bigint       | 1,561,470 |                   1 |            548 |     False | 2024-02-15 16:38:01.251 UTC |
| male_over_25_bought_in_month   | bigint       | 1,561,470 |                   1 |            152 |     False | 2024-02-15 16:38:01.251 UTC |
| male_over_25_sold_in_month     | bigint       | 1,561,470 |                   1 |            247 |     False | 2024-02-15 16:38:01.251 UTC |
| male_over_25_died_in_month     | bigint       | 1,561,470 |                   1 |             23 |     False | 2024-02-15 16:38:01.251 UTC |
| male_over_25_end_of_month      | bigint       | 1,561,470 |                   1 |            547 |     False | 2024-02-15 16:38:01.251 UTC |
| male_over_25_net_transfer      | bigint       | 1,561,470 |                   1 |            172 |     False | 2024-02-15 16:38:01.251 UTC |
| female_over_25_start_of_month  | bigint       | 1,561,470 |                   1 |           1217 |     False | 2024-02-15 16:38:01.251 UTC |
| female_over_25_bought_in_month | bigint       | 1,561,470 |                   1 |            267 |     False | 2024-02-15 16:38:01.251 UTC |
| female_over_25_sold_in_month   | bigint       | 1,561,470 |                   1 |            320 |     False | 2024-02-15 16:38:01.251 UTC |
| female_over_25_died_in_month   | bigint       | 1,561,470 |                   1 |             28 |     False | 2024-02-15 16:38:01.251 UTC |
| female_over_25_end_of_month    | bigint       | 1,561,470 |                   1 |           1216 |     False | 2024-02-15 16:38:01.251 UTC |
| female_over_25_net_transfer    | bigint       | 1,561,470 |                   1 |            216 |     False | 2024-02-15 16:38:01.251 UTC |
{% enddocs %}
