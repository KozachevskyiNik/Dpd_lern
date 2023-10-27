{% docs dbt_profiler_results__prod_domains_rds__animal_parentage_data  %}
| column_name         | data_type |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 13,339,678 |            1.000000 |              4 |     False | 2023-10-26 15:18:41.330 UTC |
| animal_id           | varchar   | 13,339,678 |            1.000000 |       13339678 |      True | 2023-10-26 15:18:41.330 UTC |
| dam_id              | varchar   | 13,339,678 |            0.493153 |        3306836 |     False | 2023-10-26 15:18:41.330 UTC |
| dam_sex             | varchar   | 13,339,678 |            0.493153 |              3 |     False | 2023-10-26 15:18:41.330 UTC |
| dam_tag             | varchar   | 13,339,678 |            0.493153 |        3077637 |     False | 2023-10-26 15:18:41.330 UTC |
| dam_breed           | varchar   | 13,339,678 |            0.493153 |            256 |     False | 2023-10-26 15:18:41.330 UTC |
| dam_total_children  | bigint    | 13,339,678 |            0.493153 |             33 |     False | 2023-10-26 15:18:41.330 UTC |
| sire_id             | varchar   | 13,339,678 |            0.319768 |         686347 |     False | 2023-10-26 15:18:41.330 UTC |
| sire_sex            | varchar   | 13,339,678 |            0.319768 |              4 |     False | 2023-10-26 15:18:41.330 UTC |
| sire_tag            | varchar   | 13,339,678 |            0.319768 |         131571 |     False | 2023-10-26 15:18:41.330 UTC |
| sire_breed          | varchar   | 13,339,678 |            0.319768 |            192 |     False | 2023-10-26 15:18:41.330 UTC |
| sire_pedigree       | varchar   | 13,339,678 |            0.248744 |          40710 |     False | 2023-10-26 15:18:41.330 UTC |
| sire_total_children | bigint    | 13,339,678 |            0.319768 |            344 |     False | 2023-10-26 15:18:41.330 UTC |
{% enddocs %}
