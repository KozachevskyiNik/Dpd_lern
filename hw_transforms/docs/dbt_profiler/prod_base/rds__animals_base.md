{% docs dbt_profiler_results__prod_base_rds__animals_base  %}
| column_name        | data_type    |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 13,539,600 |            1.000000 |              4 |     False | 2023-11-17 15:21:04.746 UTC |
| animal_id          | varchar      | 13,539,600 |            1.000000 |       13539600 |      True | 2023-11-17 15:21:04.746 UTC |
| species            | varchar      | 13,539,600 |            1.000000 |              2 |     False | 2023-11-17 15:21:04.746 UTC |
| sex                | varchar      | 13,539,600 |            1.000000 |              4 |     False | 2023-11-17 15:21:04.746 UTC |
| farm_id            | varchar      | 13,539,600 |            1.000000 |          26598 |     False | 2023-11-17 15:21:04.746 UTC |
| tag                | varchar      | 13,539,600 |            1.000000 |       11517643 |     False | 2023-11-17 15:21:04.746 UTC |
| dob_date           | timestamp(6) | 13,539,600 |            1.000000 |          14993 |     False | 2023-11-17 15:21:04.746 UTC |
| dod_date           | timestamp(6) | 13,539,600 |            0.013622 |           7339 |     False | 2023-11-17 15:21:04.746 UTC |
| breed              | varchar      | 13,539,600 |            1.000000 |            311 |     False | 2023-11-17 15:21:04.746 UTC |
| in_herd_flag       | bigint       | 13,539,600 |            1.000000 |              2 |     False | 2023-11-17 15:21:04.746 UTC |
| moved_in_date      | timestamp(6) | 13,539,600 |            0.701144 |          12187 |     False | 2023-11-17 15:21:04.746 UTC |
| off_herd_date      | timestamp(6) | 13,539,600 |            0.692006 |           9973 |     False | 2023-11-17 15:21:04.746 UTC |
| off_herd_reason    | varchar      | 13,539,600 |            0.512865 |             68 |     False | 2023-11-17 15:21:04.746 UTC |
| stock_bull_flag    | bigint       | 13,539,600 |            1.000000 |              2 |     False | 2023-11-17 15:21:04.746 UTC |
| pedigree           | varchar      | 13,539,600 |            0.386381 |         522332 |     False | 2023-11-17 15:21:04.746 UTC |
| freezebrand        | varchar      | 13,539,600 |            0.127156 |          93779 |     False | 2023-11-17 15:21:04.746 UTC |
| dam_id             | varchar      | 13,539,600 |            0.492575 |        3365355 |     False | 2023-11-17 15:21:04.746 UTC |
| genetic_dam_tag    | varchar      | 13,539,600 |            0.091027 |         971301 |     False | 2023-11-17 15:21:04.746 UTC |
| sire_id            | varchar      | 13,539,600 |            0.339047 |         741696 |     False | 2023-11-17 15:21:04.746 UTC |
| calf_reg_datetime  | timestamp(6) | 13,539,600 |            0.213278 |        2783328 |     False | 2023-11-17 15:21:04.746 UTC |
| size               | varchar      | 13,539,600 |            0.039237 |              5 |     False | 2023-11-17 15:21:04.746 UTC |
| vigor              | varchar      | 13,539,600 |            0.038143 |              5 |     False | 2023-11-17 15:21:04.746 UTC |
| purpose            | varchar      | 13,539,600 |            0.097082 |              9 |     False | 2023-11-17 15:21:04.746 UTC |
| animal_type_id     | varchar      | 13,539,600 |            0.999996 |              6 |     False | 2023-11-17 15:21:04.746 UTC |
| source             | varchar      | 13,539,600 |            1.000000 |             10 |     False | 2023-11-17 15:21:04.746 UTC |
| purchase_price     | double       | 13,539,600 |            0.014424 |           2569 |     False | 2023-11-17 15:21:04.746 UTC |
| sale_price         | double       | 13,539,600 |            0.025888 |          13550 |     False | 2023-11-17 15:21:04.746 UTC |
| purchase_weight    | double       | 13,539,600 |            0.000180 |            357 |     False | 2023-11-17 15:21:04.746 UTC |
| sale_weight        | double       | 13,539,600 |            0.000071 |            238 |     False | 2023-11-17 15:21:04.746 UTC |
| dead_weight        | double       | 13,539,600 |            0.000531 |           2737 |     False | 2023-11-17 15:21:04.746 UTC |
| kill_out_grade     | varchar      | 13,539,600 |            0.000498 |            344 |     False | 2023-11-17 15:21:04.746 UTC |
| price_per_kilo     | double       | 13,539,600 |            0.000497 |            699 |     False | 2023-11-17 15:21:04.746 UTC |
| killsheet_name     | varchar      | 13,539,600 |            0.000271 |             20 |     False | 2023-11-17 15:21:04.746 UTC |
| killsheet_datetime | timestamp(6) | 13,539,600 |            0.000251 |            225 |     False | 2023-11-17 15:21:04.746 UTC |
| mart_name          | varchar      | 13,539,600 |            0.000271 |             33 |     False | 2023-11-17 15:21:04.746 UTC |
| mart_datetime      | timestamp(6) | 13,539,600 |            0.000291 |            266 |     False | 2023-11-17 15:21:04.746 UTC |
| calc_wt_flag       | bigint       | 13,539,600 |            0.154102 |              2 |     False | 2023-11-17 15:21:04.746 UTC |
| supplier_id        | varchar      | 13,539,600 |            0.086527 |         247008 |     False | 2023-11-17 15:21:04.746 UTC |
| buyer_id           | varchar      | 13,539,600 |            0.391408 |         222862 |     False | 2023-11-17 15:21:04.746 UTC |
| buyer_herd         | varchar      | 13,539,600 |            0.070203 |          73701 |     False | 2023-11-17 15:21:04.746 UTC |
| buyer_name         | varchar      | 13,539,600 |            0.086527 |          82953 |     False | 2023-11-17 15:21:04.746 UTC |
| seller_herd        | varchar      | 13,539,600 |            0.372191 |          54305 |     False | 2023-11-17 15:21:04.746 UTC |
| seller_name        | varchar      | 13,539,600 |            0.391408 |          76184 |     False | 2023-11-17 15:21:04.746 UTC |
{% enddocs %}
