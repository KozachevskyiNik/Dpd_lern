{% docs dbt_profiler_results__prod_marts_mart__bulk_tank_summary  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| uuid                           | varchar      |     1,821 |            1.000000 |           1818 |     False | 2024-03-25 13:27:37.405 UTC |
| db_name                        | varchar      |     1,821 |            1.000000 |              2 |     False | 2024-03-25 13:27:37.405 UTC |
| task_id                        | varchar      |     1,821 |            1.000000 |           1818 |     False | 2024-03-25 13:27:37.405 UTC |
| farm_id                        | varchar      |     1,821 |            1.000000 |            137 |     False | 2024-03-25 13:27:37.405 UTC |
| task_type                      | varchar      |     1,821 |            1.000000 |              1 |     False | 2024-03-25 13:27:37.405 UTC |
| record_date                    | timestamp(6) |     1,821 |            1.000000 |            183 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_collection_month          | timestamp(6) |     1,821 |            1.000000 |             12 |     False | 2024-03-25 13:27:37.405 UTC |
| milk_coop                      | varchar      |     1,821 |            0.999451 |             28 |     False | 2024-03-25 13:27:37.405 UTC |
| supplier_number                | bigint       |     1,821 |            0.584843 |             89 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_fat                  | double       |     1,821 |            0.657331 |            198 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_lactose              | double       |     1,821 |            0.613399 |             99 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_protein              | double       |     1,821 |            0.656233 |            148 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_solids               | double       |     1,821 |            0.640857 |            851 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_litres               | bigint       |     1,821 |            1.000000 |           1536 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_scc                  | double       |     1,821 |            0.638660 |            335 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_urea                 | double       |     1,821 |            0.069193 |             77 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_water                | double       |     1,821 |            0.039539 |             18 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_temperature          | double       |     1,821 |            0.394838 |             82 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_thermoduric_count    | double       |     1,821 |            0.031851 |             22 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_tbc                  | double       |     1,821 |            0.523339 |            115 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_no_of_milking_cows   | double       |     1,821 |            0.810544 |            179 |     False | 2024-03-25 13:27:37.405 UTC |
| bulk_tank_number_of_milking... | double       |     1,821 |            0.738056 |              6 |     False | 2024-03-25 13:27:37.405 UTC |
| kg_of_concentrate_fed_per_c... | double       |     1,821 |            0.293795 |             18 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_sum_litres             | bigint       |     1,821 |            1.000000 |            258 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_protein            | double       |     1,821 |            0.740802 |             91 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_fat                | double       |     1,821 |            0.742449 |            108 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_lactose            | double       |     1,821 |            0.673806 |             69 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_solids             | double       |     1,821 |            0.733663 |            154 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_scc                | double       |     1,821 |            0.723778 |            139 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_tbc                | double       |     1,821 |            0.663921 |            110 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_urea               | double       |     1,821 |            0.144975 |             31 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_temperature        | double       |     1,821 |            0.432180 |             88 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_thermoduric_count  | double       |     1,821 |            0.086766 |             18 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_no_of_cows         | double       |     1,821 |            0.773751 |            103 |     False | 2024-03-25 13:27:37.405 UTC |
| monthly_avg_feed               | double       |     1,821 |            0.321252 |             10 |     False | 2024-03-25 13:27:37.405 UTC |
| avg_litres_per_cow_per_day     | double       |     1,821 |            0.773751 |            214 |     False | 2024-03-25 13:27:37.405 UTC |
| litres_per_kg                  | double       |     1,821 |            0.310269 |             94 |     False | 2024-03-25 13:27:37.405 UTC |
{% enddocs %}
