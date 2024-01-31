{% docs dbt_profiler_results__prod_marts_mart__get_counts_of_stock  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                        | varchar      | 1,514,813 |                   1 |              4 |     False | 2024-01-31 14:02:18.038 UTC |
| reconciliation_month           | timestamp(6) | 1,514,813 |                   1 |             61 |     False | 2024-01-31 14:02:18.038 UTC |
| farm_id                        | varchar      | 1,514,813 |                   1 |          24833 |     False | 2024-01-31 14:02:18.038 UTC |
| under_6_start_of_month         | bigint       | 1,514,813 |                   1 |            807 |     False | 2024-01-31 14:02:18.038 UTC |
| under_6_born_in_month          | bigint       | 1,514,813 |                   1 |            341 |     False | 2024-01-31 14:02:18.038 UTC |
| under_6_bought_in_month        | bigint       | 1,514,813 |                   1 |            388 |     False | 2024-01-31 14:02:18.038 UTC |
| under_6_sold_in_month          | bigint       | 1,514,813 |                   1 |            362 |     False | 2024-01-31 14:02:18.038 UTC |
| under_6_died_in_month          | bigint       | 1,514,813 |                   1 |             42 |     False | 2024-01-31 14:02:18.038 UTC |
| under_6_end_of_month           | bigint       | 1,514,813 |                   1 |            806 |     False | 2024-01-31 14:02:18.038 UTC |
| under_6_net_transfer           | bigint       | 1,514,813 |                   1 |            317 |     False | 2024-01-31 14:02:18.038 UTC |
| between_7_12_start_of_month    | bigint       | 1,514,813 |                   1 |            674 |     False | 2024-01-31 14:02:18.038 UTC |
| between_7_12_bought_in_month   | bigint       | 1,514,813 |                   1 |            207 |     False | 2024-01-31 14:02:18.038 UTC |
| between_7_12_sold_in_month     | bigint       | 1,514,813 |                   1 |            205 |     False | 2024-01-31 14:02:18.038 UTC |
| between_7_12_died_in_month     | bigint       | 1,514,813 |                   1 |             17 |     False | 2024-01-31 14:02:18.038 UTC |
| between_7_12_end_of_month      | bigint       | 1,514,813 |                   1 |            672 |     False | 2024-01-31 14:02:18.038 UTC |
| between_7_12_net_transfer      | bigint       | 1,514,813 |                   1 |            524 |     False | 2024-01-31 14:02:18.038 UTC |
| between_13_18_start_of_month   | bigint       | 1,514,813 |                   1 |            618 |     False | 2024-01-31 14:02:18.038 UTC |
| between_13_18_bought_in_month  | bigint       | 1,514,813 |                   1 |            208 |     False | 2024-01-31 14:02:18.038 UTC |
| between_13_18_sold_in_month    | bigint       | 1,514,813 |                   1 |            196 |     False | 2024-01-31 14:02:18.038 UTC |
| between_13_18_died_in_month    | bigint       | 1,514,813 |                   1 |             18 |     False | 2024-01-31 14:02:18.038 UTC |
| between_13_18_end_of_month     | bigint       | 1,514,813 |                   1 |            618 |     False | 2024-01-31 14:02:18.038 UTC |
| between_13_18_net_transfer     | bigint       | 1,514,813 |                   1 |            504 |     False | 2024-01-31 14:02:18.038 UTC |
| between_19_24_start_of_month   | bigint       | 1,514,813 |                   1 |            600 |     False | 2024-01-31 14:02:18.038 UTC |
| between_19_24_bought_in_month  | bigint       | 1,514,813 |                   1 |            256 |     False | 2024-01-31 14:02:18.038 UTC |
| between_19_24_sold_in_month    | bigint       | 1,514,813 |                   1 |            256 |     False | 2024-01-31 14:02:18.038 UTC |
| between_19_24_died_in_month    | bigint       | 1,514,813 |                   1 |             28 |     False | 2024-01-31 14:02:18.038 UTC |
| between_19_24_end_of_month     | bigint       | 1,514,813 |                   1 |            596 |     False | 2024-01-31 14:02:18.038 UTC |
| between_19_24_net_transfer     | bigint       | 1,514,813 |                   1 |            470 |     False | 2024-01-31 14:02:18.038 UTC |
| male_over_25_start_of_month    | bigint       | 1,514,813 |                   1 |            523 |     False | 2024-01-31 14:02:18.038 UTC |
| male_over_25_bought_in_month   | bigint       | 1,514,813 |                   1 |            152 |     False | 2024-01-31 14:02:18.038 UTC |
| male_over_25_sold_in_month     | bigint       | 1,514,813 |                   1 |            241 |     False | 2024-01-31 14:02:18.038 UTC |
| male_over_25_died_in_month     | bigint       | 1,514,813 |                   1 |             23 |     False | 2024-01-31 14:02:18.038 UTC |
| male_over_25_end_of_month      | bigint       | 1,514,813 |                   1 |            522 |     False | 2024-01-31 14:02:18.038 UTC |
| male_over_25_net_transfer      | bigint       | 1,514,813 |                   1 |            166 |     False | 2024-01-31 14:02:18.038 UTC |
| female_over_25_start_of_month  | bigint       | 1,514,813 |                   1 |           1198 |     False | 2024-01-31 14:02:18.038 UTC |
| female_over_25_bought_in_month | bigint       | 1,514,813 |                   1 |            262 |     False | 2024-01-31 14:02:18.038 UTC |
| female_over_25_sold_in_month   | bigint       | 1,514,813 |                   1 |            316 |     False | 2024-01-31 14:02:18.038 UTC |
| female_over_25_died_in_month   | bigint       | 1,514,813 |                   1 |             26 |     False | 2024-01-31 14:02:18.038 UTC |
| female_over_25_end_of_month    | bigint       | 1,514,813 |                   1 |           1197 |     False | 2024-01-31 14:02:18.038 UTC |
| female_over_25_net_transfer    | bigint       | 1,514,813 |                   1 |            209 |     False | 2024-01-31 14:02:18.038 UTC |
{% enddocs %}
