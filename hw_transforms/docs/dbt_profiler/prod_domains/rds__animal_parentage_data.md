{% docs dbt_profiler_results__prod_domains_rds__animal_parentage_data  %}
| column_name         | data_type |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 13,193,438 |            1.000000 |              4 |     False | 2023-10-07 12:04:34.843 UTC |
| animal_id           | varchar   | 13,193,438 |            1.000000 |     13,193,438 |      True | 2023-10-07 12:04:34.843 UTC |
| dam_id              | varchar   | 13,193,438 |            0.492296 |      3,249,155 |     False | 2023-10-07 12:04:34.843 UTC |
| dam_sex             | varchar   | 13,193,438 |            0.492296 |              3 |     False | 2023-10-07 12:04:34.843 UTC |
| dam_tag             | varchar   | 13,193,438 |            0.492296 |      3,030,772 |     False | 2023-10-07 12:04:34.843 UTC |
| dam_breed           | varchar   | 13,193,438 |            0.492296 |            253 |     False | 2023-10-07 12:04:34.843 UTC |
| dam_total_children  | bigint    | 13,193,438 |            0.492296 |             29 |     False | 2023-10-07 12:04:34.843 UTC |
| sire_id             | varchar   | 13,193,438 |            0.337418 |        712,995 |     False | 2023-10-07 12:04:34.843 UTC |
| sire_sex            | varchar   | 13,193,438 |            0.337418 |              4 |     False | 2023-10-07 12:04:34.843 UTC |
| sire_tag            | varchar   | 13,193,438 |            0.337418 |        151,192 |     False | 2023-10-07 12:04:34.843 UTC |
| sire_breed          | varchar   | 13,193,438 |            0.337418 |            193 |     False | 2023-10-07 12:04:34.843 UTC |
| sire_pedigree       | varchar   | 13,193,438 |            0.253063 |         42,016 |     False | 2023-10-07 12:04:34.843 UTC |
| sire_total_children | bigint    | 13,193,438 |            0.337418 |            342 |     False | 2023-10-07 12:04:34.843 UTC |
{% enddocs %}
