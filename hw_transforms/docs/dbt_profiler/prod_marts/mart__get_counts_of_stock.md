{% docs dbt_profiler_results__prod_marts_mart__get_counts_of_stock  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                        | varchar      | 1,604,106 |                   1 |              4 |     False | 2024-03-25 13:28:30.233 UTC |
| reconciliation_month           | timestamp(6) | 1,604,106 |                   1 |             63 |     False | 2024-03-25 13:28:30.233 UTC |
| farm_id                        | varchar      | 1,604,106 |                   1 |          25462 |     False | 2024-03-25 13:28:30.233 UTC |
| under_6_start_of_month         | bigint       | 1,604,106 |                   1 |            822 |     False | 2024-03-25 13:28:30.233 UTC |
| under_6_born_in_month          | bigint       | 1,604,106 |                   1 |            361 |     False | 2024-03-25 13:28:30.233 UTC |
| under_6_bought_in_month        | bigint       | 1,604,106 |                   1 |            400 |     False | 2024-03-25 13:28:30.233 UTC |
| under_6_sold_in_month          | bigint       | 1,604,106 |                   1 |            373 |     False | 2024-03-25 13:28:30.233 UTC |
| under_6_died_in_month          | bigint       | 1,604,106 |                   1 |             42 |     False | 2024-03-25 13:28:30.233 UTC |
| under_6_end_of_month           | bigint       | 1,604,106 |                   1 |            821 |     False | 2024-03-25 13:28:30.233 UTC |
| under_6_net_transfer           | bigint       | 1,604,106 |                   1 |            360 |     False | 2024-03-25 13:28:30.233 UTC |
| between_7_12_start_of_month    | bigint       | 1,604,106 |                   1 |            705 |     False | 2024-03-25 13:28:30.233 UTC |
| between_7_12_bought_in_month   | bigint       | 1,604,106 |                   1 |            211 |     False | 2024-03-25 13:28:30.233 UTC |
| between_7_12_sold_in_month     | bigint       | 1,604,106 |                   1 |            208 |     False | 2024-03-25 13:28:30.233 UTC |
| between_7_12_died_in_month     | bigint       | 1,604,106 |                   1 |             17 |     False | 2024-03-25 13:28:30.233 UTC |
| between_7_12_end_of_month      | bigint       | 1,604,106 |                   1 |            703 |     False | 2024-03-25 13:28:30.233 UTC |
| between_7_12_net_transfer      | bigint       | 1,604,106 |                   1 |            539 |     False | 2024-03-25 13:28:30.233 UTC |
| between_13_18_start_of_month   | bigint       | 1,604,106 |                   1 |            642 |     False | 2024-03-25 13:28:30.233 UTC |
| between_13_18_bought_in_month  | bigint       | 1,604,106 |                   1 |            210 |     False | 2024-03-25 13:28:30.233 UTC |
| between_13_18_sold_in_month    | bigint       | 1,604,106 |                   1 |            197 |     False | 2024-03-25 13:28:30.233 UTC |
| between_13_18_died_in_month    | bigint       | 1,604,106 |                   1 |             18 |     False | 2024-03-25 13:28:30.233 UTC |
| between_13_18_end_of_month     | bigint       | 1,604,106 |                   1 |            642 |     False | 2024-03-25 13:28:30.233 UTC |
| between_13_18_net_transfer     | bigint       | 1,604,106 |                   1 |            516 |     False | 2024-03-25 13:28:30.233 UTC |
| between_19_24_start_of_month   | bigint       | 1,604,106 |                   1 |            655 |     False | 2024-03-25 13:28:30.233 UTC |
| between_19_24_bought_in_month  | bigint       | 1,604,106 |                   1 |            275 |     False | 2024-03-25 13:28:30.233 UTC |
| between_19_24_sold_in_month    | bigint       | 1,604,106 |                   1 |            266 |     False | 2024-03-25 13:28:30.233 UTC |
| between_19_24_died_in_month    | bigint       | 1,604,106 |                   1 |             28 |     False | 2024-03-25 13:28:30.233 UTC |
| between_19_24_end_of_month     | bigint       | 1,604,106 |                   1 |            653 |     False | 2024-03-25 13:28:30.233 UTC |
| between_19_24_net_transfer     | bigint       | 1,604,106 |                   1 |            483 |     False | 2024-03-25 13:28:30.233 UTC |
| male_over_25_start_of_month    | bigint       | 1,604,106 |                   1 |            556 |     False | 2024-03-25 13:28:30.233 UTC |
| male_over_25_bought_in_month   | bigint       | 1,604,106 |                   1 |            155 |     False | 2024-03-25 13:28:30.233 UTC |
| male_over_25_sold_in_month     | bigint       | 1,604,106 |                   1 |            251 |     False | 2024-03-25 13:28:30.233 UTC |
| male_over_25_died_in_month     | bigint       | 1,604,106 |                   1 |             23 |     False | 2024-03-25 13:28:30.233 UTC |
| male_over_25_end_of_month      | bigint       | 1,604,106 |                   1 |            555 |     False | 2024-03-25 13:28:30.233 UTC |
| male_over_25_net_transfer      | bigint       | 1,604,106 |                   1 |            171 |     False | 2024-03-25 13:28:30.233 UTC |
| female_over_25_start_of_month  | bigint       | 1,604,106 |                   1 |           1225 |     False | 2024-03-25 13:28:30.233 UTC |
| female_over_25_bought_in_month | bigint       | 1,604,106 |                   1 |            267 |     False | 2024-03-25 13:28:30.233 UTC |
| female_over_25_sold_in_month   | bigint       | 1,604,106 |                   1 |            324 |     False | 2024-03-25 13:28:30.233 UTC |
| female_over_25_died_in_month   | bigint       | 1,604,106 |                   1 |             28 |     False | 2024-03-25 13:28:30.233 UTC |
| female_over_25_end_of_month    | bigint       | 1,604,106 |                   1 |           1225 |     False | 2024-03-25 13:28:30.233 UTC |
| female_over_25_net_transfer    | bigint       | 1,604,106 |                   1 |            213 |     False | 2024-03-25 13:28:30.233 UTC |
{% enddocs %}
