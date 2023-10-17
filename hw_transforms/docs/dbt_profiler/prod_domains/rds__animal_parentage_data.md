{% docs dbt_profiler_results__prod_domains_rds__animal_parentage_data  %}
| column_name         | data_type |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 13,271,057 |            1.000000 |              4 |     False | 2023-10-17 14:46:02.482 UTC |
| animal_id           | varchar   | 13,271,057 |            1.000000 |       13271057 |      True | 2023-10-17 14:46:02.482 UTC |
| dam_id              | varchar   | 13,271,057 |            0.491859 |        3270710 |     False | 2023-10-17 14:46:02.482 UTC |
| dam_sex             | varchar   | 13,271,057 |            0.491859 |              3 |     False | 2023-10-17 14:46:02.482 UTC |
| dam_tag             | varchar   | 13,271,057 |            0.491859 |        3049090 |     False | 2023-10-17 14:46:02.482 UTC |
| dam_breed           | varchar   | 13,271,057 |            0.491859 |            253 |     False | 2023-10-17 14:46:02.482 UTC |
| dam_total_children  | bigint    | 13,271,057 |            0.491859 |             31 |     False | 2023-10-17 14:46:02.482 UTC |
| sire_id             | varchar   | 13,271,057 |            0.337051 |         717048 |     False | 2023-10-17 14:46:02.482 UTC |
| sire_sex            | varchar   | 13,271,057 |            0.337051 |              4 |     False | 2023-10-17 14:46:02.482 UTC |
| sire_tag            | varchar   | 13,271,057 |            0.337051 |         151999 |     False | 2023-10-17 14:46:02.482 UTC |
| sire_breed          | varchar   | 13,271,057 |            0.337051 |            193 |     False | 2023-10-17 14:46:02.482 UTC |
| sire_pedigree       | varchar   | 13,271,057 |            0.252407 |          42131 |     False | 2023-10-17 14:46:02.482 UTC |
| sire_total_children | bigint    | 13,271,057 |            0.337051 |            343 |     False | 2023-10-17 14:46:02.482 UTC |
{% enddocs %}
