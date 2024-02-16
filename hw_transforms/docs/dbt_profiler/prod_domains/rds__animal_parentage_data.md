{% docs dbt_profiler_results__prod_domains_rds__animal_parentage_data  %}
| column_name         | data_type |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 14,443,540 |            1.000000 |              4 |     False | 2024-02-15 16:31:16.764 UTC |
| animal_id           | varchar   | 14,443,540 |            1.000000 |       14443540 |      True | 2024-02-15 16:31:16.764 UTC |
| dam_id              | varchar   | 14,443,540 |            0.493086 |        3597583 |     False | 2024-02-15 16:31:16.764 UTC |
| dam_sex             | varchar   | 14,443,540 |            0.493086 |              3 |     False | 2024-02-15 16:31:16.764 UTC |
| dam_tag             | varchar   | 14,443,540 |            0.493086 |        3324532 |     False | 2024-02-15 16:31:16.764 UTC |
| dam_breed           | varchar   | 14,443,540 |            0.493086 |            262 |     False | 2024-02-15 16:31:16.764 UTC |
| dam_total_children  | bigint    | 14,443,540 |            0.493086 |             35 |     False | 2024-02-15 16:31:16.764 UTC |
| sire_id             | varchar   | 14,443,540 |            0.321237 |         753563 |     False | 2024-02-15 16:31:16.764 UTC |
| sire_sex            | varchar   | 14,443,540 |            0.321237 |              4 |     False | 2024-02-15 16:31:16.764 UTC |
| sire_tag            | varchar   | 14,443,540 |            0.321237 |         143127 |     False | 2024-02-15 16:31:16.764 UTC |
| sire_breed          | varchar   | 14,443,540 |            0.321237 |            204 |     False | 2024-02-15 16:31:16.764 UTC |
| sire_pedigree       | varchar   | 14,443,540 |            0.247028 |          43993 |     False | 2024-02-15 16:31:16.764 UTC |
| sire_total_children | bigint    | 14,443,540 |            0.321237 |            355 |     False | 2024-02-15 16:31:16.764 UTC |
{% enddocs %}
