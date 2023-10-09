{% docs dbt_profiler_results__prod_base_rds__animals_base  %}
| column_name        | data_type    |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 13,193,438 |            1.000000 |              4 |     False | 2023-10-07 12:02:55.600 UTC |
| animal_id          | varchar      | 13,193,438 |            1.000000 |     13,193,438 |      True | 2023-10-07 12:02:55.600 UTC |
| species            | varchar      | 13,193,438 |            1.000000 |              2 |     False | 2023-10-07 12:02:55.600 UTC |
| sex                | varchar      | 13,193,438 |            1.000000 |              5 |     False | 2023-10-07 12:02:55.600 UTC |
| farm_id            | varchar      | 13,193,438 |            1.000000 |         25,887 |     False | 2023-10-07 12:02:55.600 UTC |
| tag                | varchar      | 13,193,438 |            1.000000 |     11,227,066 |     False | 2023-10-07 12:02:55.600 UTC |
| dob_date           | timestamp(6) | 13,193,438 |            1.000000 |         14,984 |     False | 2023-10-07 12:02:55.600 UTC |
| dod_date           | timestamp(6) | 13,193,438 |            0.013459 |          7,243 |     False | 2023-10-07 12:02:55.600 UTC |
| breed              | varchar      | 13,193,438 |            1.000000 |            302 |     False | 2023-10-07 12:02:55.600 UTC |
| in_herd_flag       | bigint       | 13,193,438 |            1.000000 |              2 |     False | 2023-10-07 12:02:55.600 UTC |
| moved_in_date      | timestamp(6) | 13,193,438 |            0.608075 |         12,143 |     False | 2023-10-07 12:02:55.600 UTC |
| off_herd_date      | timestamp(6) | 13,193,438 |            0.687741 |          9,922 |     False | 2023-10-07 12:02:55.600 UTC |
| off_herd_reason    | varchar      | 13,193,438 |            0.515961 |             68 |     False | 2023-10-07 12:02:55.600 UTC |
| stock_bull_flag    | bigint       | 13,193,438 |            1.000000 |              2 |     False | 2023-10-07 12:02:55.600 UTC |
| pedigree           | varchar      | 13,193,438 |            0.386939 |        512,415 |     False | 2023-10-07 12:02:55.600 UTC |
| freezebrand        | varchar      | 13,193,438 |            0.127858 |         80,553 |     False | 2023-10-07 12:02:55.600 UTC |
| dam_id             | varchar      | 13,193,438 |            0.492646 |      3,253,219 |     False | 2023-10-07 12:02:55.600 UTC |
| genetic_dam_tag    | varchar      | 13,193,438 |            0.088727 |        927,850 |     False | 2023-10-07 12:02:55.600 UTC |
| sire_id            | varchar      | 13,193,438 |            0.339564 |        719,403 |     False | 2023-10-07 12:02:55.600 UTC |
| calf_reg_datetime  | timestamp(6) | 13,193,438 |            0.217250 |      2,762,476 |     False | 2023-10-07 12:02:55.600 UTC |
| size               | varchar      | 13,193,438 |            0.039965 |              5 |     False | 2023-10-07 12:02:55.600 UTC |
| vigor              | varchar      | 13,193,438 |            0.038857 |              5 |     False | 2023-10-07 12:02:55.600 UTC |
| purpose            | varchar      | 13,193,438 |            0.095502 |              9 |     False | 2023-10-07 12:02:55.600 UTC |
| animal_type_id     | varchar      | 13,193,438 |            1.000000 |              6 |     False | 2023-10-07 12:02:55.600 UTC |
| purchase_price     | double       | 13,193,438 |            0.013854 |          2,515 |     False | 2023-10-07 12:02:55.600 UTC |
| mart_name          | varchar      | 13,193,438 |            0.000089 |             16 |     False | 2023-10-07 12:02:55.600 UTC |
| mart_datetime      | bigint       | 13,193,438 |            0.000101 |            144 |     False | 2023-10-07 12:02:55.600 UTC |
| sale_weight        | double       | 13,193,438 |            0.000019 |            138 |     False | 2023-10-07 12:02:55.600 UTC |
| purchase_weight    | double       | 13,193,438 |            0.000068 |            216 |     False | 2023-10-07 12:02:55.600 UTC |
| sale_price         | double       | 13,193,438 |            0.024394 |         12,512 |     False | 2023-10-07 12:02:55.600 UTC |
| killsheet_name     | varchar      | 13,193,438 |            0.000186 |             17 |     False | 2023-10-07 12:02:55.600 UTC |
| killsheet_datetime | bigint       | 13,193,438 |            0.000155 |            142 |     False | 2023-10-07 12:02:55.600 UTC |
| kill_out_grade     | varchar      | 13,193,438 |            0.000396 |            317 |     False | 2023-10-07 12:02:55.600 UTC |
| dead_weight        | double       | 13,193,438 |            0.000425 |          2,378 |     False | 2023-10-07 12:02:55.600 UTC |
| price_per_kilo     | double       | 13,193,438 |            0.000391 |            569 |     False | 2023-10-07 12:02:55.600 UTC |
| calc_wt_flag       | bigint       | 13,193,438 |            0.137554 |              2 |     False | 2023-10-07 12:02:55.600 UTC |
| supplier_id        | varchar      | 13,193,438 |            0.086689 |        242,211 |     False | 2023-10-07 12:02:55.600 UTC |
| buyer_id           | varchar      | 13,193,438 |            0.388811 |        218,169 |     False | 2023-10-07 12:02:55.600 UTC |
| buyer_herd         | varchar      | 13,193,438 |            0.068720 |         72,928 |     False | 2023-10-07 12:02:55.600 UTC |
| buyer_name         | varchar      | 13,193,438 |            0.084152 |         81,125 |     False | 2023-10-07 12:02:55.600 UTC |
| seller_herd        | varchar      | 13,193,438 |            0.366382 |         53,669 |     False | 2023-10-07 12:02:55.600 UTC |
| seller_name        | varchar      | 13,193,438 |            0.383961 |         74,512 |     False | 2023-10-07 12:02:55.600 UTC |
{% enddocs %}
