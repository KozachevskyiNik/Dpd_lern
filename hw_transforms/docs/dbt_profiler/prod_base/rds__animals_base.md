{% docs dbt_profiler_results__prod_base_rds__animals_base  %}
| column_name        | data_type    |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 13,272,915 |            1.000000 |              4 |     False | 2023-10-17 14:43:49.278 UTC |
| animal_id          | varchar      | 13,272,915 |            1.000000 |       13272915 |      True | 2023-10-17 14:43:49.278 UTC |
| species            | varchar      | 13,272,915 |            1.000000 |              2 |     False | 2023-10-17 14:43:49.278 UTC |
| sex                | varchar      | 13,272,915 |            1.000000 |              5 |     False | 2023-10-17 14:43:49.278 UTC |
| farm_id            | varchar      | 13,272,915 |            1.000000 |          26039 |     False | 2023-10-17 14:43:49.278 UTC |
| tag                | varchar      | 13,272,915 |            1.000000 |       11290513 |     False | 2023-10-17 14:43:49.278 UTC |
| dob_date           | timestamp(6) | 13,272,915 |            1.000000 |          14995 |     False | 2023-10-17 14:43:49.278 UTC |
| dod_date           | timestamp(6) | 13,272,915 |            0.013479 |           7261 |     False | 2023-10-17 14:43:49.278 UTC |
| breed              | varchar      | 13,272,915 |            1.000000 |            304 |     False | 2023-10-17 14:43:49.278 UTC |
| in_herd_flag       | bigint       | 13,272,915 |            1.000000 |              2 |     False | 2023-10-17 14:43:49.278 UTC |
| moved_in_date      | timestamp(6) | 13,272,915 |            0.609175 |          12151 |     False | 2023-10-17 14:43:49.278 UTC |
| off_herd_date      | timestamp(6) | 13,272,915 |            0.687916 |           9932 |     False | 2023-10-17 14:43:49.278 UTC |
| off_herd_reason    | varchar      | 13,272,915 |            0.515192 |             68 |     False | 2023-10-17 14:43:49.278 UTC |
| stock_bull_flag    | bigint       | 13,272,915 |            1.000000 |              2 |     False | 2023-10-17 14:43:49.278 UTC |
| pedigree           | varchar      | 13,272,915 |            0.386875 |         515679 |     False | 2023-10-17 14:43:49.278 UTC |
| freezebrand        | varchar      | 13,272,915 |            0.127631 |          82883 |     False | 2023-10-17 14:43:49.278 UTC |
| dam_id             | varchar      | 13,272,915 |            0.492212 |        3275450 |     False | 2023-10-17 14:43:49.278 UTC |
| genetic_dam_tag    | varchar      | 13,272,915 |            0.089012 |         935618 |     False | 2023-10-17 14:43:49.278 UTC |
| sire_id            | varchar      | 13,272,915 |            0.339181 |         723679 |     False | 2023-10-17 14:43:49.278 UTC |
| calf_reg_datetime  | timestamp(6) | 13,272,915 |            0.216322 |        2767277 |     False | 2023-10-17 14:43:49.278 UTC |
| size               | varchar      | 13,272,915 |            0.039799 |              5 |     False | 2023-10-17 14:43:49.278 UTC |
| vigor              | varchar      | 13,272,915 |            0.038693 |              5 |     False | 2023-10-17 14:43:49.278 UTC |
| purpose            | varchar      | 13,272,915 |            0.095937 |              9 |     False | 2023-10-17 14:43:49.278 UTC |
| animal_type_id     | varchar      | 13,272,915 |            1.000000 |              6 |     False | 2023-10-17 14:43:49.278 UTC |
| purchase_price     | double       | 13,272,915 |            0.013939 |           2524 |     False | 2023-10-17 14:43:49.278 UTC |
| mart_name          | varchar      | 13,272,915 |            0.000089 |             17 |     False | 2023-10-17 14:43:49.278 UTC |
| mart_datetime      | bigint       | 13,272,915 |            0.000100 |            150 |     False | 2023-10-17 14:43:49.278 UTC |
| sale_weight        | double       | 13,272,915 |            0.000019 |            138 |     False | 2023-10-17 14:43:49.278 UTC |
| purchase_weight    | double       | 13,272,915 |            0.000065 |            214 |     False | 2023-10-17 14:43:49.278 UTC |
| sale_price         | double       | 13,272,915 |            0.024669 |          12793 |     False | 2023-10-17 14:43:49.278 UTC |
| killsheet_name     | varchar      | 13,272,915 |            0.000191 |             18 |     False | 2023-10-17 14:43:49.278 UTC |
| killsheet_datetime | bigint       | 13,272,915 |            0.000160 |            146 |     False | 2023-10-17 14:43:49.278 UTC |
| kill_out_grade     | varchar      | 13,272,915 |            0.000395 |            319 |     False | 2023-10-17 14:43:49.278 UTC |
| dead_weight        | double       | 13,272,915 |            0.000425 |           2413 |     False | 2023-10-17 14:43:49.278 UTC |
| price_per_kilo     | double       | 13,272,915 |            0.000391 |            557 |     False | 2023-10-17 14:43:49.278 UTC |
| calc_wt_flag       | bigint       | 13,272,915 |            0.132094 |              2 |     False | 2023-10-17 14:43:49.278 UTC |
| supplier_id        | varchar      | 13,272,915 |            0.086693 |         243740 |     False | 2023-10-17 14:43:49.278 UTC |
| buyer_id           | varchar      | 13,272,915 |            0.388880 |         218980 |     False | 2023-10-17 14:43:49.278 UTC |
| buyer_herd         | varchar      | 13,272,915 |            0.067223 |          72772 |     False | 2023-10-17 14:43:49.278 UTC |
| buyer_name         | varchar      | 13,272,915 |            0.082319 |          80835 |     False | 2023-10-17 14:43:49.278 UTC |
| seller_herd        | varchar      | 13,272,915 |            0.363737 |          53673 |     False | 2023-10-17 14:43:49.278 UTC |
| seller_name        | varchar      | 13,272,915 |            0.381117 |          74555 |     False | 2023-10-17 14:43:49.278 UTC |
{% enddocs %}
