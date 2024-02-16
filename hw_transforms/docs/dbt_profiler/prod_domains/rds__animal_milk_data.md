{% docs dbt_profiler_results__prod_domains_rds__animal_milk_data  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                        | varchar      |       733 |            1.000000 |              2 |     False | 2024-02-15 16:30:53.146 UTC |
| task_id                        | varchar      |       733 |            1.000000 |            733 |      True | 2024-02-15 16:30:53.146 UTC |
| farm_id                        | varchar      |       733 |            1.000000 |             76 |     False | 2024-02-15 16:30:53.146 UTC |
| task_type                      | varchar      |       733 |            1.000000 |              1 |     False | 2024-02-15 16:30:53.146 UTC |
| record_date                    | timestamp(6) |       733 |            1.000000 |            141 |     False | 2024-02-15 16:30:53.146 UTC |
| milk_coop                      | varchar      |       733 |            1.000000 |             23 |     False | 2024-02-15 16:30:53.146 UTC |
| supplier_number                | bigint       |       733 |            0.589359 |             46 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_fat                  | double       |       733 |            0.631651 |            145 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_lactose              | double       |       733 |            0.615280 |             71 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_protein              | double       |       733 |            0.631651 |            110 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_solids               | double       |       733 |            0.525239 |            251 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_litres               | bigint       |       733 |            1.000000 |            696 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_scc                  | bigint       |       733 |            0.596180 |            186 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_urea                 | double       |       733 |            0.058663 |             22 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_water                | double       |       733 |            0.066849 |             17 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_temperature          | double       |       733 |            0.365621 |             66 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_thermoduric_count    | bigint       |       733 |            0.024557 |              4 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_tbc                  | bigint       |       733 |            0.552524 |             66 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_no_of_milking_cows   | bigint       |       733 |            0.694407 |             98 |     False | 2024-02-15 16:30:53.146 UTC |
| bulk_tank_number_of_milking... | bigint       |       733 |            0.642565 |              6 |     False | 2024-02-15 16:30:53.146 UTC |
| kg_of_concentrate_fed_per_c... | double       |       733 |            0.177353 |             13 |     False | 2024-02-15 16:30:53.146 UTC |
{% enddocs %}
