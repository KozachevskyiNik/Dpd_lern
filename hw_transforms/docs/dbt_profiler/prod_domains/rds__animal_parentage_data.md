{% docs dbt_profiler_results__prod_domains_rds__animal_parentage_data  %}
| column_name         | data_type |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 14,216,563 |            1.000000 |              4 |     False | 2024-01-31 13:54:09.643 UTC |
| animal_id           | varchar   | 14,216,563 |            1.000000 |       14216563 |      True | 2024-01-31 13:54:09.643 UTC |
| dam_id              | varchar   | 14,216,563 |            0.490968 |        3538356 |     False | 2024-01-31 13:54:09.643 UTC |
| dam_sex             | varchar   | 14,216,563 |            0.490968 |              3 |     False | 2024-01-31 13:54:09.643 UTC |
| dam_tag             | varchar   | 14,216,563 |            0.490968 |        3272334 |     False | 2024-01-31 13:54:09.643 UTC |
| dam_breed           | varchar   | 14,216,563 |            0.490968 |            263 |     False | 2024-01-31 13:54:09.643 UTC |
| dam_total_children  | bigint    | 14,216,563 |            0.490968 |             35 |     False | 2024-01-31 13:54:09.643 UTC |
| sire_id             | varchar   | 14,216,563 |            0.318557 |         736649 |     False | 2024-01-31 13:54:09.643 UTC |
| sire_sex            | varchar   | 14,216,563 |            0.318557 |              4 |     False | 2024-01-31 13:54:09.643 UTC |
| sire_tag            | varchar   | 14,216,563 |            0.318557 |         140692 |     False | 2024-01-31 13:54:09.643 UTC |
| sire_breed          | varchar   | 14,216,563 |            0.318557 |            201 |     False | 2024-01-31 13:54:09.643 UTC |
| sire_pedigree       | varchar   | 14,216,563 |            0.244834 |          43219 |     False | 2024-01-31 13:54:09.643 UTC |
| sire_total_children | bigint    | 14,216,563 |            0.318557 |            351 |     False | 2024-01-31 13:54:09.643 UTC |
{% enddocs %}
