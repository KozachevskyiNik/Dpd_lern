{% docs dbt_profiler_results__prod_base_rds__animals_base  %}
| column_name        | data_type    |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 13,352,361 |            1.000000 |              4 |     False | 2023-10-26 15:17:11.626 UTC |
| animal_id          | varchar      | 13,352,361 |            1.000000 |       13352361 |      True | 2023-10-26 15:17:11.626 UTC |
| species            | varchar      | 13,352,361 |            1.000000 |              2 |     False | 2023-10-26 15:17:11.626 UTC |
| sex                | varchar      | 13,352,361 |            1.000000 |              4 |     False | 2023-10-26 15:17:11.626 UTC |
| farm_id            | varchar      | 13,352,361 |            1.000000 |          26241 |     False | 2023-10-26 15:17:11.626 UTC |
| tag                | varchar      | 13,352,361 |            1.000000 |       11370484 |     False | 2023-10-26 15:17:11.626 UTC |
| dob_date           | timestamp(6) | 13,352,361 |            1.000000 |          14964 |     False | 2023-10-26 15:17:11.626 UTC |
| dod_date           | timestamp(6) | 13,352,361 |            0.013507 |           7284 |     False | 2023-10-26 15:17:11.626 UTC |
| breed              | varchar      | 13,352,361 |            1.000000 |            307 |     False | 2023-10-26 15:17:11.626 UTC |
| in_herd_flag       | bigint       | 13,352,361 |            1.000000 |              2 |     False | 2023-10-26 15:17:11.626 UTC |
| moved_in_date      | timestamp(6) | 13,352,361 |            0.701185 |          12164 |     False | 2023-10-26 15:17:11.626 UTC |
| off_herd_date      | timestamp(6) | 13,352,361 |            0.690187 |           9943 |     False | 2023-10-26 15:17:11.626 UTC |
| off_herd_reason    | varchar      | 13,352,361 |            0.514463 |             68 |     False | 2023-10-26 15:17:11.626 UTC |
| stock_bull_flag    | bigint       | 13,352,361 |            1.000000 |              2 |     False | 2023-10-26 15:17:11.626 UTC |
| pedigree           | varchar      | 13,352,361 |            0.386467 |         515274 |     False | 2023-10-26 15:17:11.626 UTC |
| freezebrand        | varchar      | 13,352,361 |            0.127706 |          86417 |     False | 2023-10-26 15:17:11.626 UTC |
| dam_id             | varchar      | 13,352,361 |            0.493520 |        3314700 |     False | 2023-10-26 15:17:11.626 UTC |
| genetic_dam_tag    | varchar      | 13,352,361 |            0.089953 |         949014 |     False | 2023-10-26 15:17:11.626 UTC |
| sire_id            | varchar      | 13,352,361 |            0.339881 |         730091 |     False | 2023-10-26 15:17:11.626 UTC |
| calf_reg_datetime  | timestamp(6) | 13,352,361 |            0.215477 |        2773061 |     False | 2023-10-26 15:17:11.626 UTC |
| size               | varchar      | 13,352,361 |            0.039637 |              5 |     False | 2023-10-26 15:17:11.626 UTC |
| vigor              | varchar      | 13,352,361 |            0.038534 |              5 |     False | 2023-10-26 15:17:11.626 UTC |
| purpose            | varchar      | 13,352,361 |            0.096027 |              9 |     False | 2023-10-26 15:17:11.626 UTC |
| animal_type_id     | varchar      | 13,352,361 |            1.000000 |              6 |     False | 2023-10-26 15:17:11.626 UTC |
| source             | varchar      | 13,352,361 |            1.000000 |             10 |     False | 2023-10-26 15:17:11.626 UTC |
| purchase_price     | double       | 13,352,361 |            0.014125 |           2541 |     False | 2023-10-26 15:17:11.626 UTC |
| sale_price         | double       | 13,352,361 |            0.025211 |          13105 |     False | 2023-10-26 15:17:11.626 UTC |
| purchase_weight    | double       | 13,352,361 |            0.000157 |            327 |     False | 2023-10-26 15:17:11.626 UTC |
| sale_weight        | double       | 13,352,361 |            0.000050 |            192 |     False | 2023-10-26 15:17:11.626 UTC |
| dead_weight        | double       | 13,352,361 |            0.000505 |           2664 |     False | 2023-10-26 15:17:11.626 UTC |
| kill_out_grade     | varchar      | 13,352,361 |            0.000471 |            331 |     False | 2023-10-26 15:17:11.626 UTC |
| price_per_kilo     | double       | 13,352,361 |            0.000468 |            664 |     False | 2023-10-26 15:17:11.626 UTC |
| killsheet_name     | varchar      | 13,352,361 |            0.000255 |             19 |     False | 2023-10-26 15:17:11.626 UTC |
| killsheet_datetime | timestamp(6) | 13,352,361 |            0.000234 |            208 |     False | 2023-10-26 15:17:11.626 UTC |
| mart_name          | varchar      | 13,352,361 |            0.000232 |             32 |     False | 2023-10-26 15:17:11.626 UTC |
| mart_datetime      | timestamp(6) | 13,352,361 |            0.000244 |            249 |     False | 2023-10-26 15:17:11.626 UTC |
| calc_wt_flag       | bigint       | 13,352,361 |            0.151273 |              2 |     False | 2023-10-26 15:17:11.626 UTC |
| supplier_id        | varchar      | 13,352,361 |            0.086864 |         245437 |     False | 2023-10-26 15:17:11.626 UTC |
| buyer_id           | varchar      | 13,352,361 |            0.390765 |         220501 |     False | 2023-10-26 15:17:11.626 UTC |
| buyer_herd         | varchar      | 13,352,361 |            0.070712 |          73559 |     False | 2023-10-26 15:17:11.626 UTC |
| buyer_name         | varchar      | 13,352,361 |            0.086864 |          82448 |     False | 2023-10-26 15:17:11.626 UTC |
| seller_herd        | varchar      | 13,352,361 |            0.372019 |          54049 |     False | 2023-10-26 15:17:11.626 UTC |
| seller_name        | varchar      | 13,352,361 |            0.390765 |          75540 |     False | 2023-10-26 15:17:11.626 UTC |
{% enddocs %}
