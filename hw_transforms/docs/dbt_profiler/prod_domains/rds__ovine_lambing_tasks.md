{% docs dbt_profiler_results__prod_domains_rds__ovine_lambing_tasks  %}
| column_name             | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                 | varchar      |   135,649 |            1.000000 |              4 |     False | 2024-03-26 08:02:51.027 UTC |
| task_id                 | varchar      |   135,649 |            1.000000 |          80818 |     False | 2024-03-26 08:02:51.027 UTC |
| farm_id                 | varchar      |   135,649 |            1.000000 |           1241 |     False | 2024-03-26 08:02:51.027 UTC |
| task_type               | varchar      |   135,649 |            1.000000 |              1 |     False | 2024-03-26 08:02:51.027 UTC |
| record_belongs_to_app   | varchar      |   135,649 |            1.000000 |              1 |     False | 2024-03-26 08:02:51.027 UTC |
| animal_id               | varchar      |   135,649 |            0.992385 |         134612 |     False | 2024-03-26 08:02:51.027 UTC |
| record_date             | timestamp(6) |   135,649 |            1.000000 |           1211 |     False | 2024-03-26 08:02:51.027 UTC |
| record_created_datetime | timestamp(6) |   135,649 |            1.000000 |          74982 |     False | 2024-03-26 08:02:51.027 UTC |
| season_born_date        | timestamp(6) |   135,649 |            1.000000 |             33 |     False | 2024-03-26 08:02:51.027 UTC |
| genetic_ewe_id          | varchar      |   135,649 |            0.001327 |             52 |     False | 2024-03-26 08:02:51.027 UTC |
| ewe_id                  | varchar      |   135,649 |            1.000000 |          67765 |     False | 2024-03-26 08:02:51.027 UTC |
| ewe_breed               | varchar      |   135,649 |            0.990446 |            262 |     False | 2024-03-26 08:02:51.027 UTC |
| ram_id                  | varchar      |   135,649 |            0.354850 |           1877 |     False | 2024-03-26 08:02:51.027 UTC |
| ram_breed               | varchar      |   135,649 |            0.533708 |            181 |     False | 2024-03-26 08:02:51.027 UTC |
| lambing_number          | bigint       |   135,649 |            0.998164 |           3545 |     False | 2024-03-26 08:02:51.027 UTC |
| notes                   | varchar      |   135,649 |            0.123075 |           7815 |     False | 2024-03-26 08:02:51.027 UTC |
| lambs_count             | bigint       |   135,649 |            1.000000 |              6 |     False | 2024-03-26 08:02:51.027 UTC |
| all_lambs_aborted       | bigint       |   135,649 |            1.000000 |              2 |     False | 2024-03-26 08:02:51.027 UTC |
| birthing_difficulty     | varchar      |   135,649 |            0.500461 |              4 |     False | 2024-03-26 08:02:51.027 UTC |
| mothering_ability       | varchar      |   135,649 |            0.531047 |              5 |     False | 2024-03-26 08:02:51.027 UTC |
| ewe_milkiness_at_birth  | varchar      |   135,649 |            0.502776 |              5 |     False | 2024-03-26 08:02:51.027 UTC |
{% enddocs %}
