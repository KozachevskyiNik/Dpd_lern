{% docs dbt_profiler_results__prod_marts_mart__get_counts_of_stock  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                        | varchar      | 1,504,443 |                   1 |              4 |     False | 2024-01-02 10:09:03.468 UTC |
| reconciliation_month           | timestamp(6) | 1,504,443 |                   1 |             61 |     False | 2024-01-02 10:09:03.468 UTC |
| farm_id                        | varchar      | 1,504,443 |                   1 |          24663 |     False | 2024-01-02 10:09:03.468 UTC |
| under_6_start_of_month         | bigint       | 1,504,443 |                   1 |            808 |     False | 2024-01-02 10:09:03.468 UTC |
| under_6_born_in_month          | bigint       | 1,504,443 |                   1 |            342 |     False | 2024-01-02 10:09:03.468 UTC |
| under_6_bought_in_month        | bigint       | 1,504,443 |                   1 |            386 |     False | 2024-01-02 10:09:03.468 UTC |
| under_6_sold_in_month          | bigint       | 1,504,443 |                   1 |            360 |     False | 2024-01-02 10:09:03.468 UTC |
| under_6_died_in_month          | bigint       | 1,504,443 |                   1 |             42 |     False | 2024-01-02 10:09:03.468 UTC |
| under_6_end_of_month           | bigint       | 1,504,443 |                   1 |            807 |     False | 2024-01-02 10:09:03.468 UTC |
| under_6_net_transfer           | bigint       | 1,504,443 |                   1 |            286 |     False | 2024-01-02 10:09:03.468 UTC |
| between_7_12_start_of_month    | bigint       | 1,504,443 |                   1 |            676 |     False | 2024-01-02 10:09:03.468 UTC |
| between_7_12_bought_in_month   | bigint       | 1,504,443 |                   1 |            205 |     False | 2024-01-02 10:09:03.468 UTC |
| between_7_12_sold_in_month     | bigint       | 1,504,443 |                   1 |            204 |     False | 2024-01-02 10:09:03.468 UTC |
| between_7_12_died_in_month     | bigint       | 1,504,443 |                   1 |             17 |     False | 2024-01-02 10:09:03.468 UTC |
| between_7_12_end_of_month      | bigint       | 1,504,443 |                   1 |            674 |     False | 2024-01-02 10:09:03.468 UTC |
| between_7_12_net_transfer      | bigint       | 1,504,443 |                   1 |            522 |     False | 2024-01-02 10:09:03.468 UTC |
| between_13_18_start_of_month   | bigint       | 1,504,443 |                   1 |            618 |     False | 2024-01-02 10:09:03.468 UTC |
| between_13_18_bought_in_month  | bigint       | 1,504,443 |                   1 |            208 |     False | 2024-01-02 10:09:03.468 UTC |
| between_13_18_sold_in_month    | bigint       | 1,504,443 |                   1 |            197 |     False | 2024-01-02 10:09:03.468 UTC |
| between_13_18_died_in_month    | bigint       | 1,504,443 |                   1 |             18 |     False | 2024-01-02 10:09:03.468 UTC |
| between_13_18_end_of_month     | bigint       | 1,504,443 |                   1 |            618 |     False | 2024-01-02 10:09:03.468 UTC |
| between_13_18_net_transfer     | bigint       | 1,504,443 |                   1 |            504 |     False | 2024-01-02 10:09:03.468 UTC |
| between_19_24_start_of_month   | bigint       | 1,504,443 |                   1 |            599 |     False | 2024-01-02 10:09:03.468 UTC |
| between_19_24_bought_in_month  | bigint       | 1,504,443 |                   1 |            256 |     False | 2024-01-02 10:09:03.468 UTC |
| between_19_24_sold_in_month    | bigint       | 1,504,443 |                   1 |            256 |     False | 2024-01-02 10:09:03.468 UTC |
| between_19_24_died_in_month    | bigint       | 1,504,443 |                   1 |             28 |     False | 2024-01-02 10:09:03.468 UTC |
| between_19_24_end_of_month     | bigint       | 1,504,443 |                   1 |            595 |     False | 2024-01-02 10:09:03.468 UTC |
| between_19_24_net_transfer     | bigint       | 1,504,443 |                   1 |            467 |     False | 2024-01-02 10:09:03.468 UTC |
| male_over_25_start_of_month    | bigint       | 1,504,443 |                   1 |            523 |     False | 2024-01-02 10:09:03.468 UTC |
| male_over_25_bought_in_month   | bigint       | 1,504,443 |                   1 |            152 |     False | 2024-01-02 10:09:03.468 UTC |
| male_over_25_sold_in_month     | bigint       | 1,504,443 |                   1 |            240 |     False | 2024-01-02 10:09:03.468 UTC |
| male_over_25_died_in_month     | bigint       | 1,504,443 |                   1 |             23 |     False | 2024-01-02 10:09:03.468 UTC |
| male_over_25_end_of_month      | bigint       | 1,504,443 |                   1 |            522 |     False | 2024-01-02 10:09:03.468 UTC |
| male_over_25_net_transfer      | bigint       | 1,504,443 |                   1 |            158 |     False | 2024-01-02 10:09:03.468 UTC |
| female_over_25_start_of_month  | bigint       | 1,504,443 |                   1 |           1181 |     False | 2024-01-02 10:09:03.468 UTC |
| female_over_25_bought_in_month | bigint       | 1,504,443 |                   1 |            262 |     False | 2024-01-02 10:09:03.468 UTC |
| female_over_25_sold_in_month   | bigint       | 1,504,443 |                   1 |            312 |     False | 2024-01-02 10:09:03.468 UTC |
| female_over_25_died_in_month   | bigint       | 1,504,443 |                   1 |             26 |     False | 2024-01-02 10:09:03.468 UTC |
| female_over_25_end_of_month    | bigint       | 1,504,443 |                   1 |           1180 |     False | 2024-01-02 10:09:03.468 UTC |
| female_over_25_net_transfer    | bigint       | 1,504,443 |                   1 |            175 |     False | 2024-01-02 10:09:03.468 UTC |
{% enddocs %}
