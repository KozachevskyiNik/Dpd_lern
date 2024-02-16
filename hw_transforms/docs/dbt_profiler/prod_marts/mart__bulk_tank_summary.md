{% docs dbt_profiler_results__prod_marts_mart__bulk_tank_summary  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| uuid                           | varchar      |       733 |            1.000000 |            733 |      True | 2024-02-15 16:37:12.079 UTC |
| db_name                        | varchar      |       733 |            1.000000 |              2 |     False | 2024-02-15 16:37:12.079 UTC |
| task_id                        | varchar      |       733 |            1.000000 |            733 |      True | 2024-02-15 16:37:12.079 UTC |
| farm_id                        | varchar      |       733 |            1.000000 |             76 |     False | 2024-02-15 16:37:12.079 UTC |
| task_type                      | varchar      |       733 |            1.000000 |              1 |     False | 2024-02-15 16:37:12.079 UTC |
| record_date                    | timestamp(6) |       733 |            1.000000 |            141 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_collection_month          | timestamp(6) |       733 |            1.000000 |             11 |     False | 2024-02-15 16:37:12.079 UTC |
| milk_coop                      | varchar      |       733 |            1.000000 |             23 |     False | 2024-02-15 16:37:12.079 UTC |
| supplier_number                | bigint       |       733 |            0.589359 |             46 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_fat                  | double       |       733 |            0.633015 |            145 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_lactose              | double       |       733 |            0.616644 |             71 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_protein              | double       |       733 |            0.633015 |            110 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_solids               | double       |       733 |            0.526603 |            250 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_litres               | bigint       |       733 |            1.000000 |            695 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_scc                  | double       |       733 |            0.597544 |            186 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_urea                 | double       |       733 |            0.058663 |             22 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_water                | double       |       733 |            0.066849 |             17 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_temperature          | double       |       733 |            0.365621 |             66 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_thermoduric_count    | double       |       733 |            0.024557 |              4 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_tbc                  | double       |       733 |            0.552524 |             66 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_no_of_milking_cows   | double       |       733 |            0.694407 |             98 |     False | 2024-02-15 16:37:12.079 UTC |
| bulk_tank_number_of_milking... | double       |       733 |            0.642565 |              6 |     False | 2024-02-15 16:37:12.079 UTC |
| kg_of_concentrate_fed_per_c... | double       |       733 |            0.177353 |             13 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_sum_litres             | bigint       |       733 |            1.000000 |            136 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_protein            | double       |       733 |            0.698499 |             60 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_fat                | double       |       733 |            0.698499 |             70 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_lactose            | double       |       733 |            0.645293 |             46 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_solids             | double       |       733 |            0.626194 |             68 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_scc                | double       |       733 |            0.668486 |             71 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_tbc                | double       |       733 |            0.645293 |             49 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_urea               | double       |       733 |            0.132333 |             14 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_temperature        | double       |       733 |            0.371078 |             46 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_thermoduric_count  | double       |       733 |            0.027285 |              4 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_no_of_cows         | double       |       733 |            0.652115 |             54 |     False | 2024-02-15 16:37:12.079 UTC |
| monthly_avg_feed               | double       |       733 |            0.192360 |              7 |     False | 2024-02-15 16:37:12.079 UTC |
| avg_litres_per_cow_per_day     | double       |       733 |            0.652115 |             99 |     False | 2024-02-15 16:37:12.079 UTC |
| litres_per_kg                  | double       |       733 |            0.189632 |             39 |     False | 2024-02-15 16:37:12.079 UTC |
{% enddocs %}
