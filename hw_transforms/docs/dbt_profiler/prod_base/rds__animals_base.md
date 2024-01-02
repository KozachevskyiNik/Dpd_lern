{% docs dbt_profiler_results__prod_base_rds__animals_base  %}
| column_name        | data_type    |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------ | ------------ | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name            | varchar      | 13,870,031 |            1.000000 |              4 |     False | 2024-01-02 09:47:11.287 UTC |
| animal_id          | varchar      | 13,870,031 |            1.000000 |       13870031 |      True | 2024-01-02 09:47:11.287 UTC |
| species            | varchar      | 13,870,031 |            1.000000 |              2 |     False | 2024-01-02 09:47:11.287 UTC |
| sex                | varchar      | 13,870,031 |            1.000000 |              4 |     False | 2024-01-02 09:47:11.287 UTC |
| farm_id            | varchar      | 13,870,031 |            1.000000 |          27188 |     False | 2024-01-02 09:47:11.287 UTC |
| tag                | varchar      | 13,870,031 |            1.000000 |       11775778 |     False | 2024-01-02 09:47:11.287 UTC |
| dob_date           | timestamp(6) | 13,870,031 |            1.000000 |          15040 |     False | 2024-01-02 09:47:11.287 UTC |
| dod_date           | timestamp(6) | 13,870,031 |            0.013648 |           7404 |     False | 2024-01-02 09:47:11.287 UTC |
| breed              | varchar      | 13,870,031 |            1.000000 |            323 |     False | 2024-01-02 09:47:11.287 UTC |
| in_herd_flag       | bigint       | 13,870,031 |            1.000000 |              2 |     False | 2024-01-02 09:47:11.287 UTC |
| moved_in_date      | timestamp(6) | 13,870,031 |            0.700414 |          12228 |     False | 2024-01-02 09:47:11.287 UTC |
| off_herd_date      | timestamp(6) | 13,870,031 |            0.695101 |          10026 |     False | 2024-01-02 09:47:11.287 UTC |
| off_herd_reason    | varchar      | 13,870,031 |            0.511809 |             69 |     False | 2024-01-02 09:47:11.287 UTC |
| stock_bull_flag    | bigint       | 13,870,031 |            1.000000 |              2 |     False | 2024-01-02 09:47:11.287 UTC |
| pedigree           | varchar      | 13,870,031 |            0.385594 |         533172 |     False | 2024-01-02 09:47:11.287 UTC |
| freezebrand        | varchar      | 13,870,031 |            0.126190 |         100030 |     False | 2024-01-02 09:47:11.287 UTC |
| dam_id             | varchar      | 13,870,031 |            0.490263 |        3447881 |     False | 2024-01-02 09:47:11.287 UTC |
| genetic_dam_tag    | varchar      | 13,870,031 |            0.091582 |         996744 |     False | 2024-01-02 09:47:11.287 UTC |
| sire_id            | varchar      | 13,870,031 |            0.336758 |         757601 |     False | 2024-01-02 09:47:11.287 UTC |
| calf_reg_datetime  | timestamp(6) | 13,870,031 |            0.209409 |        2799626 |     False | 2024-01-02 09:47:11.287 UTC |
| size               | varchar      | 13,870,031 |            0.038549 |              5 |     False | 2024-01-02 09:47:11.287 UTC |
| vigor              | varchar      | 13,870,031 |            0.037472 |              5 |     False | 2024-01-02 09:47:11.287 UTC |
| purpose            | varchar      | 13,870,031 |            0.099159 |              9 |     False | 2024-01-02 09:47:11.287 UTC |
| animal_type_id     | varchar      | 13,870,031 |            0.999996 |              6 |     False | 2024-01-02 09:47:11.287 UTC |
| source             | varchar      | 13,870,031 |            1.000000 |             10 |     False | 2024-01-02 09:47:11.287 UTC |
| purchase_price     | double       | 13,870,031 |            0.014633 |           2614 |     False | 2024-01-02 09:47:11.287 UTC |
| sale_price         | double       | 13,870,031 |            0.026713 |          14672 |     False | 2024-01-02 09:47:11.287 UTC |
| purchase_weight    | double       | 13,870,031 |            0.000259 |            413 |     False | 2024-01-02 09:47:11.287 UTC |
| sale_weight        | double       | 13,870,031 |            0.000142 |            634 |     False | 2024-01-02 09:47:11.287 UTC |
| dead_weight        | double       | 13,870,031 |            0.000604 |           2986 |     False | 2024-01-02 09:47:11.287 UTC |
| kill_out_grade     | varchar      | 13,870,031 |            0.000568 |            354 |     False | 2024-01-02 09:47:11.287 UTC |
| price_per_kilo     | double       | 13,870,031 |            0.000571 |            751 |     False | 2024-01-02 09:47:11.287 UTC |
| killsheet_name     | varchar      | 13,870,031 |            0.000325 |             21 |     False | 2024-01-02 09:47:11.287 UTC |
| killsheet_datetime | timestamp(6) | 13,870,031 |            0.000305 |            258 |     False | 2024-01-02 09:47:11.287 UTC |
| mart_name          | varchar      | 13,870,031 |            0.000308 |             35 |     False | 2024-01-02 09:47:11.287 UTC |
| mart_datetime      | timestamp(6) | 13,870,031 |            0.000331 |            307 |     False | 2024-01-02 09:47:11.287 UTC |
| calc_wt_flag       | bigint       | 13,870,031 |            0.158604 |              2 |     False | 2024-01-02 09:47:11.287 UTC |
| supplier_id        | varchar      | 13,870,031 |            0.086362 |         252509 |     False | 2024-01-02 09:47:11.287 UTC |
| buyer_id           | varchar      | 13,870,031 |            0.393043 |         227796 |     False | 2024-01-02 09:47:11.287 UTC |
| buyer_herd         | varchar      | 13,870,031 |            0.069903 |          74203 |     False | 2024-01-02 09:47:11.287 UTC |
| buyer_name         | varchar      | 13,870,031 |            0.086362 |          83995 |     False | 2024-01-02 09:47:11.287 UTC |
| seller_herd        | varchar      | 13,870,031 |            0.373271 |          54829 |     False | 2024-01-02 09:47:11.287 UTC |
| seller_name        | varchar      | 13,870,031 |            0.393043 |          77422 |     False | 2024-01-02 09:47:11.287 UTC |
{% enddocs %}
