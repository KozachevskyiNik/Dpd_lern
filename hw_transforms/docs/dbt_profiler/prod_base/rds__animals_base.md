{% docs dbt_profiler_results__prod_base_rds__animals_base  %}
| column_name        | data_type    |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 14,222,717 |            1.000000 |              4 |     False | 2024-01-31 13:39:40.493 UTC |
| animal_id          | varchar      | 14,222,717 |            1.000000 |       14222717 |      True | 2024-01-31 13:39:40.493 UTC |
| species            | varchar      | 14,222,717 |            1.000000 |              2 |     False | 2024-01-31 13:39:40.493 UTC |
| sex                | varchar      | 14,222,717 |            1.000000 |              4 |     False | 2024-01-31 13:39:40.493 UTC |
| farm_id            | varchar      | 14,222,717 |            1.000000 |          27629 |     False | 2024-01-31 13:39:40.493 UTC |
| tag                | varchar      | 14,222,717 |            1.000000 |       12053549 |     False | 2024-01-31 13:39:40.493 UTC |
| dob_date           | timestamp(6) | 14,222,717 |            1.000000 |          15104 |     False | 2024-01-31 13:39:40.493 UTC |
| dod_date           | timestamp(6) | 14,222,717 |            0.013697 |           7471 |     False | 2024-01-31 13:39:40.493 UTC |
| breed              | varchar      | 14,222,717 |            1.000000 |            325 |     False | 2024-01-31 13:39:40.493 UTC |
| in_herd_flag       | bigint       | 14,222,717 |            1.000000 |              2 |     False | 2024-01-31 13:39:40.493 UTC |
| moved_in_date      | timestamp(6) | 14,222,717 |            0.700631 |          12300 |     False | 2024-01-31 13:39:40.493 UTC |
| off_herd_date      | timestamp(6) | 14,222,717 |            0.695778 |          10078 |     False | 2024-01-31 13:39:40.493 UTC |
| off_herd_reason    | varchar      | 14,222,717 |            0.508514 |             69 |     False | 2024-01-31 13:39:40.493 UTC |
| stock_bull_flag    | bigint       | 14,222,717 |            1.000000 |              2 |     False | 2024-01-31 13:39:40.493 UTC |
| pedigree           | varchar      | 14,222,717 |            0.387251 |         546814 |     False | 2024-01-31 13:39:40.493 UTC |
| freezebrand        | varchar      | 14,222,717 |            0.128008 |         112159 |     False | 2024-01-31 13:39:40.493 UTC |
| dam_id             | varchar      | 14,222,717 |            0.491263 |        3543812 |     False | 2024-01-31 13:39:40.493 UTC |
| genetic_dam_tag    | varchar      | 14,222,717 |            0.091885 |        1020307 |     False | 2024-01-31 13:39:40.493 UTC |
| sire_id            | varchar      | 14,222,717 |            0.337374 |         780481 |     False | 2024-01-31 13:39:40.493 UTC |
| calf_reg_datetime  | timestamp(6) | 14,222,717 |            0.206888 |        2835435 |     False | 2024-01-31 13:39:40.493 UTC |
| size               | varchar      | 14,222,717 |            0.038174 |              5 |     False | 2024-01-31 13:39:40.493 UTC |
| vigor              | varchar      | 14,222,717 |            0.037083 |              5 |     False | 2024-01-31 13:39:40.493 UTC |
| purpose            | varchar      | 14,222,717 |            0.101760 |              9 |     False | 2024-01-31 13:39:40.493 UTC |
| animal_type_id     | varchar      | 14,222,717 |            0.999996 |              6 |     False | 2024-01-31 13:39:40.493 UTC |
| source             | varchar      | 14,222,717 |            1.000000 |             10 |     False | 2024-01-31 13:39:40.493 UTC |
| purchase_price     | double       | 14,222,717 |            0.014719 |           2687 |     False | 2024-01-31 13:39:40.493 UTC |
| sale_price         | double       | 14,222,717 |            0.027324 |          16429 |     False | 2024-01-31 13:39:40.493 UTC |
| purchase_weight    | double       | 14,222,717 |            0.000369 |            499 |     False | 2024-01-31 13:39:40.493 UTC |
| sale_weight        | double       | 14,222,717 |            0.000214 |           1016 |     False | 2024-01-31 13:39:40.493 UTC |
| dead_weight        | double       | 14,222,717 |            0.000690 |           3217 |     False | 2024-01-31 13:39:40.493 UTC |
| kill_out_grade     | varchar      | 14,222,717 |            0.000649 |            359 |     False | 2024-01-31 13:39:40.493 UTC |
| price_per_kilo     | double       | 14,222,717 |            0.000654 |            800 |     False | 2024-01-31 13:39:40.493 UTC |
| killsheet_name     | varchar      | 14,222,717 |            0.000385 |             21 |     False | 2024-01-31 13:39:40.493 UTC |
| killsheet_datetime | timestamp(6) | 14,222,717 |            0.000366 |            289 |     False | 2024-01-31 13:39:40.493 UTC |
| mart_name          | varchar      | 14,222,717 |            0.000373 |             36 |     False | 2024-01-31 13:39:40.493 UTC |
| mart_datetime      | timestamp(6) | 14,222,717 |            0.000395 |            340 |     False | 2024-01-31 13:39:40.493 UTC |
| calc_wt_flag       | bigint       | 14,222,717 |            0.167134 |              2 |     False | 2024-01-31 13:39:40.493 UTC |
| supplier_id        | varchar      | 14,222,717 |            0.085509 |         255767 |     False | 2024-01-31 13:39:40.493 UTC |
| buyer_id           | varchar      | 14,222,717 |            0.391629 |         231320 |     False | 2024-01-31 13:39:40.493 UTC |
| buyer_herd         | varchar      | 14,222,717 |            0.069040 |          74569 |     False | 2024-01-31 13:39:40.493 UTC |
| buyer_name         | varchar      | 14,222,717 |            0.085509 |          84701 |     False | 2024-01-31 13:39:40.493 UTC |
| seller_herd        | varchar      | 14,222,717 |            0.371523 |          55202 |     False | 2024-01-31 13:39:40.493 UTC |
| seller_name        | varchar      | 14,222,717 |            0.391629 |          78263 |     False | 2024-01-31 13:39:40.493 UTC |
{% enddocs %}
