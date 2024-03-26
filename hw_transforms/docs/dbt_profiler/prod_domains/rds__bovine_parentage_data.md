{% docs dbt_profiler_results__prod_domains_rds__bovine_parentage_data  %}
| column_name         | data_type |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 14,588,852 |            1.000000 |              4 |     False | 2024-03-26 07:58:36.529 UTC |
| animal_id           | varchar   | 14,588,852 |            1.000000 |       14588852 |      True | 2024-03-26 07:58:36.529 UTC |
| dam_id              | varchar   | 14,588,852 |            0.511154 |        3710051 |     False | 2024-03-26 07:58:36.529 UTC |
| dam_sex             | varchar   | 14,588,852 |            0.511154 |              4 |     False | 2024-03-26 07:58:36.529 UTC |
| dam_tag             | varchar   | 14,588,852 |            0.511154 |        3422555 |     False | 2024-03-26 07:58:36.529 UTC |
| dam_breed           | varchar   | 14,588,852 |            0.511154 |            262 |     False | 2024-03-26 07:58:36.529 UTC |
| dam_total_children  | bigint    | 14,588,852 |            0.511154 |             36 |     False | 2024-03-26 07:58:36.529 UTC |
| sire_id             | varchar   | 14,588,852 |            0.339904 |         785873 |     False | 2024-03-26 07:58:36.529 UTC |
| sire_sex            | varchar   | 14,588,852 |            0.339904 |              4 |     False | 2024-03-26 07:58:36.529 UTC |
| sire_tag            | varchar   | 14,588,852 |            0.339904 |         148505 |     False | 2024-03-26 07:58:36.529 UTC |
| sire_breed          | varchar   | 14,588,852 |            0.339904 |            207 |     False | 2024-03-26 07:58:36.529 UTC |
| sire_pedigree       | varchar   | 14,588,852 |            0.263111 |          46525 |     False | 2024-03-26 07:58:36.529 UTC |
| sire_total_children | bigint    | 14,588,852 |            0.339904 |            370 |     False | 2024-03-26 07:58:36.529 UTC |
{% enddocs %}
