{% docs dbt_profiler_results__prod_marts_mart__get_counts_of_stock  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                        | varchar      | 1,426,679 |                   1 |              4 |     False | 2023-11-17 15:25:02.110 UTC |
| reconciliation_month           | timestamp(6) | 1,426,679 |                   1 |             59 |     False | 2023-11-17 15:25:02.110 UTC |
| farm_id                        | varchar      | 1,426,679 |                   1 |          24181 |     False | 2023-11-17 15:25:02.110 UTC |
| under_6_start_of_month         | bigint       | 1,426,679 |                   1 |            800 |     False | 2023-11-17 15:25:02.110 UTC |
| under_6_born_in_month          | bigint       | 1,426,679 |                   1 |            344 |     False | 2023-11-17 15:25:02.110 UTC |
| under_6_bought_in_month        | bigint       | 1,426,679 |                   1 |            382 |     False | 2023-11-17 15:25:02.110 UTC |
| under_6_sold_in_month          | bigint       | 1,426,679 |                   1 |            358 |     False | 2023-11-17 15:25:02.110 UTC |
| under_6_died_in_month          | bigint       | 1,426,679 |                   1 |             42 |     False | 2023-11-17 15:25:02.110 UTC |
| under_6_end_of_month           | bigint       | 1,426,679 |                   1 |            798 |     False | 2023-11-17 15:25:02.110 UTC |
| under_6_net_transfer           | bigint       | 1,426,679 |                   1 |            310 |     False | 2023-11-17 15:25:02.110 UTC |
| between_7_12_start_of_month    | bigint       | 1,426,679 |                   1 |            651 |     False | 2023-11-17 15:25:02.110 UTC |
| between_7_12_bought_in_month   | bigint       | 1,426,679 |                   1 |            207 |     False | 2023-11-17 15:25:02.110 UTC |
| between_7_12_sold_in_month     | bigint       | 1,426,679 |                   1 |            203 |     False | 2023-11-17 15:25:02.110 UTC |
| between_7_12_died_in_month     | bigint       | 1,426,679 |                   1 |             17 |     False | 2023-11-17 15:25:02.110 UTC |
| between_7_12_end_of_month      | bigint       | 1,426,679 |                   1 |            649 |     False | 2023-11-17 15:25:02.110 UTC |
| between_7_12_net_transfer      | bigint       | 1,426,679 |                   1 |            511 |     False | 2023-11-17 15:25:02.110 UTC |
| between_13_18_start_of_month   | bigint       | 1,426,679 |                   1 |            609 |     False | 2023-11-17 15:25:02.110 UTC |
| between_13_18_bought_in_month  | bigint       | 1,426,679 |                   1 |            208 |     False | 2023-11-17 15:25:02.110 UTC |
| between_13_18_sold_in_month    | bigint       | 1,426,679 |                   1 |            196 |     False | 2023-11-17 15:25:02.110 UTC |
| between_13_18_died_in_month    | bigint       | 1,426,679 |                   1 |             18 |     False | 2023-11-17 15:25:02.110 UTC |
| between_13_18_end_of_month     | bigint       | 1,426,679 |                   1 |            609 |     False | 2023-11-17 15:25:02.110 UTC |
| between_13_18_net_transfer     | bigint       | 1,426,679 |                   1 |            495 |     False | 2023-11-17 15:25:02.110 UTC |
| between_19_24_start_of_month   | bigint       | 1,426,679 |                   1 |            567 |     False | 2023-11-17 15:25:02.110 UTC |
| between_19_24_bought_in_month  | bigint       | 1,426,679 |                   1 |            251 |     False | 2023-11-17 15:25:02.110 UTC |
| between_19_24_sold_in_month    | bigint       | 1,426,679 |                   1 |            247 |     False | 2023-11-17 15:25:02.110 UTC |
| between_19_24_died_in_month    | bigint       | 1,426,679 |                   1 |             26 |     False | 2023-11-17 15:25:02.110 UTC |
| between_19_24_end_of_month     | bigint       | 1,426,679 |                   1 |            563 |     False | 2023-11-17 15:25:02.110 UTC |
| between_19_24_net_transfer     | bigint       | 1,426,679 |                   1 |            456 |     False | 2023-11-17 15:25:02.110 UTC |
| male_over_25_start_of_month    | bigint       | 1,426,679 |                   1 |            514 |     False | 2023-11-17 15:25:02.110 UTC |
| male_over_25_bought_in_month   | bigint       | 1,426,679 |                   1 |            149 |     False | 2023-11-17 15:25:02.110 UTC |
| male_over_25_sold_in_month     | bigint       | 1,426,679 |                   1 |            234 |     False | 2023-11-17 15:25:02.110 UTC |
| male_over_25_died_in_month     | bigint       | 1,426,679 |                   1 |             22 |     False | 2023-11-17 15:25:02.110 UTC |
| male_over_25_end_of_month      | bigint       | 1,426,679 |                   1 |            513 |     False | 2023-11-17 15:25:02.110 UTC |
| male_over_25_net_transfer      | bigint       | 1,426,679 |                   1 |            171 |     False | 2023-11-17 15:25:02.110 UTC |
| female_over_25_start_of_month  | bigint       | 1,426,679 |                   1 |           1163 |     False | 2023-11-17 15:25:02.110 UTC |
| female_over_25_bought_in_month | bigint       | 1,426,679 |                   1 |            260 |     False | 2023-11-17 15:25:02.110 UTC |
| female_over_25_sold_in_month   | bigint       | 1,426,679 |                   1 |            302 |     False | 2023-11-17 15:25:02.110 UTC |
| female_over_25_died_in_month   | bigint       | 1,426,679 |                   1 |             26 |     False | 2023-11-17 15:25:02.110 UTC |
| female_over_25_end_of_month    | bigint       | 1,426,679 |                   1 |           1162 |     False | 2023-11-17 15:25:02.110 UTC |
| female_over_25_net_transfer    | bigint       | 1,426,679 |                   1 |            209 |     False | 2023-11-17 15:25:02.110 UTC |
{% enddocs %}
