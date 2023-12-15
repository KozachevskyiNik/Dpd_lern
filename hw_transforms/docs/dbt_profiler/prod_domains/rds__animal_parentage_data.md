{% docs dbt_profiler_results__prod_domains_rds__animal_parentage_data  %}
| column_name         | data_type |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 13,536,691 |            1.000000 |              4 |     False | 2023-11-17 15:27:23.939 UTC |
| animal_id           | varchar   | 13,536,691 |            1.000000 |       13536691 |      True | 2023-11-17 15:27:23.939 UTC |
| dam_id              | varchar   | 13,536,691 |            0.492255 |        3360640 |     False | 2023-11-17 15:27:23.939 UTC |
| dam_sex             | varchar   | 13,536,691 |            0.492255 |              3 |     False | 2023-11-17 15:27:23.939 UTC |
| dam_tag             | varchar   | 13,536,691 |            0.492255 |        3122858 |     False | 2023-11-17 15:27:23.939 UTC |
| dam_breed           | varchar   | 13,536,691 |            0.492255 |            257 |     False | 2023-11-17 15:27:23.939 UTC |
| dam_total_children  | bigint    | 13,536,691 |            0.492255 |             34 |     False | 2023-11-17 15:27:23.939 UTC |
| sire_id             | varchar   | 13,536,691 |            0.319316 |         698416 |     False | 2023-11-17 15:27:23.939 UTC |
| sire_sex            | varchar   | 13,536,691 |            0.319316 |              4 |     False | 2023-11-17 15:27:23.939 UTC |
| sire_tag            | varchar   | 13,536,691 |            0.319316 |         133875 |     False | 2023-11-17 15:27:23.939 UTC |
| sire_breed          | varchar   | 13,536,691 |            0.319316 |            195 |     False | 2023-11-17 15:27:23.939 UTC |
| sire_pedigree       | varchar   | 13,536,691 |            0.247662 |          41309 |     False | 2023-11-17 15:27:23.939 UTC |
| sire_total_children | bigint    | 13,536,691 |            0.319316 |            348 |     False | 2023-11-17 15:27:23.939 UTC |
{% enddocs %}
