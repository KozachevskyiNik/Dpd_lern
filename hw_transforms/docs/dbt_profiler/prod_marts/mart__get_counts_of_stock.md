{% docs dbt_profiler_results__prod_marts_mart__get_counts_of_stock  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                        | varchar      | 1,391,304 |                   1 |              3 |     False | 2023-10-26 15:22:03.794 UTC |
| reconciliation_month           | timestamp(6) | 1,391,304 |                   1 |             58 |     False | 2023-10-26 15:22:03.794 UTC |
| farm_id                        | varchar      | 1,391,304 |                   1 |          23988 |     False | 2023-10-26 15:22:03.794 UTC |
| under_6_start_of_month         | bigint       | 1,391,304 |                   1 |            789 |     False | 2023-10-26 15:22:03.794 UTC |
| under_6_born_in_month          | bigint       | 1,391,304 |                   1 |            344 |     False | 2023-10-26 15:22:03.794 UTC |
| under_6_bought_in_month        | bigint       | 1,391,304 |                   1 |            381 |     False | 2023-10-26 15:22:03.794 UTC |
| under_6_sold_in_month          | bigint       | 1,391,304 |                   1 |            355 |     False | 2023-10-26 15:22:03.794 UTC |
| under_6_died_in_month          | bigint       | 1,391,304 |                   1 |             42 |     False | 2023-10-26 15:22:03.794 UTC |
| under_6_end_of_month           | bigint       | 1,391,304 |                   1 |            787 |     False | 2023-10-26 15:22:03.794 UTC |
| under_6_net_transfer           | bigint       | 1,391,304 |                   1 |            319 |     False | 2023-10-26 15:22:03.794 UTC |
| between_7_12_start_of_month    | bigint       | 1,391,304 |                   1 |            642 |     False | 2023-10-26 15:22:03.794 UTC |
| between_7_12_bought_in_month   | bigint       | 1,391,304 |                   1 |            208 |     False | 2023-10-26 15:22:03.794 UTC |
| between_7_12_sold_in_month     | bigint       | 1,391,304 |                   1 |            200 |     False | 2023-10-26 15:22:03.794 UTC |
| between_7_12_died_in_month     | bigint       | 1,391,304 |                   1 |             15 |     False | 2023-10-26 15:22:03.794 UTC |
| between_7_12_end_of_month      | bigint       | 1,391,304 |                   1 |            640 |     False | 2023-10-26 15:22:03.794 UTC |
| between_7_12_net_transfer      | bigint       | 1,391,304 |                   1 |            511 |     False | 2023-10-26 15:22:03.794 UTC |
| between_13_18_start_of_month   | bigint       | 1,391,304 |                   1 |            599 |     False | 2023-10-26 15:22:03.794 UTC |
| between_13_18_bought_in_month  | bigint       | 1,391,304 |                   1 |            205 |     False | 2023-10-26 15:22:03.794 UTC |
| between_13_18_sold_in_month    | bigint       | 1,391,304 |                   1 |            195 |     False | 2023-10-26 15:22:03.794 UTC |
| between_13_18_died_in_month    | bigint       | 1,391,304 |                   1 |             18 |     False | 2023-10-26 15:22:03.794 UTC |
| between_13_18_end_of_month     | bigint       | 1,391,304 |                   1 |            599 |     False | 2023-10-26 15:22:03.794 UTC |
| between_13_18_net_transfer     | bigint       | 1,391,304 |                   1 |            493 |     False | 2023-10-26 15:22:03.794 UTC |
| between_19_24_start_of_month   | bigint       | 1,391,304 |                   1 |            553 |     False | 2023-10-26 15:22:03.794 UTC |
| between_19_24_bought_in_month  | bigint       | 1,391,304 |                   1 |            249 |     False | 2023-10-26 15:22:03.794 UTC |
| between_19_24_sold_in_month    | bigint       | 1,391,304 |                   1 |            246 |     False | 2023-10-26 15:22:03.794 UTC |
| between_19_24_died_in_month    | bigint       | 1,391,304 |                   1 |             26 |     False | 2023-10-26 15:22:03.794 UTC |
| between_19_24_end_of_month     | bigint       | 1,391,304 |                   1 |            548 |     False | 2023-10-26 15:22:03.794 UTC |
| between_19_24_net_transfer     | bigint       | 1,391,304 |                   1 |            457 |     False | 2023-10-26 15:22:03.794 UTC |
| male_over_25_start_of_month    | bigint       | 1,391,304 |                   1 |            514 |     False | 2023-10-26 15:22:03.794 UTC |
| male_over_25_bought_in_month   | bigint       | 1,391,304 |                   1 |            150 |     False | 2023-10-26 15:22:03.794 UTC |
| male_over_25_sold_in_month     | bigint       | 1,391,304 |                   1 |            233 |     False | 2023-10-26 15:22:03.794 UTC |
| male_over_25_died_in_month     | bigint       | 1,391,304 |                   1 |             21 |     False | 2023-10-26 15:22:03.794 UTC |
| male_over_25_end_of_month      | bigint       | 1,391,304 |                   1 |            513 |     False | 2023-10-26 15:22:03.794 UTC |
| male_over_25_net_transfer      | bigint       | 1,391,304 |                   1 |            186 |     False | 2023-10-26 15:22:03.794 UTC |
| female_over_25_start_of_month  | bigint       | 1,391,304 |                   1 |           1155 |     False | 2023-10-26 15:22:03.794 UTC |
| female_over_25_bought_in_month | bigint       | 1,391,304 |                   1 |            257 |     False | 2023-10-26 15:22:03.794 UTC |
| female_over_25_sold_in_month   | bigint       | 1,391,304 |                   1 |            303 |     False | 2023-10-26 15:22:03.794 UTC |
| female_over_25_died_in_month   | bigint       | 1,391,304 |                   1 |             26 |     False | 2023-10-26 15:22:03.794 UTC |
| female_over_25_end_of_month    | bigint       | 1,391,304 |                   1 |           1154 |     False | 2023-10-26 15:22:03.794 UTC |
| female_over_25_net_transfer    | bigint       | 1,391,304 |                   1 |            225 |     False | 2023-10-26 15:22:03.794 UTC |
{% enddocs %}
