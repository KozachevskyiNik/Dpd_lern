{% docs dbt_profiler_results__prod_marts_mart__bulk_tank_summary  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| uuid                           | varchar      |       449 |            1.000000 |            449 |      True | 2024-01-31 14:01:18.690 UTC |
| db_name                        | varchar      |       449 |            1.000000 |              2 |     False | 2024-01-31 14:01:18.690 UTC |
| task_id                        | varchar      |       449 |            1.000000 |            449 |      True | 2024-01-31 14:01:18.690 UTC |
| farm_id                        | varchar      |       449 |            1.000000 |             45 |     False | 2024-01-31 14:01:18.690 UTC |
| task_type                      | varchar      |       449 |            1.000000 |              1 |     False | 2024-01-31 14:01:18.690 UTC |
| record_date                    | timestamp(6) |       449 |            1.000000 |            110 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_collection_month          | timestamp(6) |       449 |            1.000000 |              7 |     False | 2024-01-31 14:01:18.690 UTC |
| milk_coop                      | varchar      |       449 |            1.000000 |             22 |     False | 2024-01-31 14:01:18.690 UTC |
| supplier_number                | bigint       |       449 |            0.561247 |             25 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_fat                  | double       |       449 |            0.623608 |            103 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_lactose              | double       |       449 |            0.601336 |             58 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_protein              | double       |       449 |            0.623608 |             89 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_solids               | double       |       449 |            0.541203 |            128 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_litres               | bigint       |       449 |            1.000000 |            433 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_scc                  | bigint       |       449 |            0.614699 |            113 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_urea                 | double       |       449 |            0.077951 |             18 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_water                | double       |       449 |            0.035635 |             12 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_temperature          | double       |       449 |            0.300668 |             51 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_thermoduric_count    | bigint       |       449 |            0.028953 |              4 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_tbc                  | bigint       |       449 |            0.583519 |             42 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_no_of_milking_cows   | bigint       |       449 |            0.726058 |             73 |     False | 2024-01-31 14:01:18.690 UTC |
| bulk_tank_number_of_milking... | bigint       |       449 |            0.632517 |              3 |     False | 2024-01-31 14:01:18.690 UTC |
| kg_of_concentrate_fed_per_c... | double       |       449 |            0.129176 |              8 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_sum_litres             | bigint       |       449 |            1.000000 |             73 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_protein            | double       |       449 |            0.701559 |              6 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_fat                | double       |       449 |            0.701559 |              7 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_lactose            | double       |       449 |            0.639198 |              6 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_solids             | double       |       449 |            0.650334 |             38 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_scc                | double       |       449 |            0.701559 |             40 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_tbc                | double       |       449 |            0.683742 |             23 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_urea               | double       |       449 |            0.153675 |              8 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_temperature        | double       |       449 |            0.325167 |              6 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_thermoduric_count  | double       |       449 |            0.033408 |              3 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_no_of_cows         | double       |       449 |            0.768374 |             40 |     False | 2024-01-31 14:01:18.690 UTC |
| monthly_avg_feed               | double       |       449 |            0.178174 |              7 |     False | 2024-01-31 14:01:18.690 UTC |
| avg_litres_per_cow_per_day     | double       |       449 |            0.768374 |             50 |     False | 2024-01-31 14:01:18.690 UTC |
| litres_per_kg                  | double       |       449 |            0.178174 |             14 |     False | 2024-01-31 14:01:18.690 UTC |
{% enddocs %}
