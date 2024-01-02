{% docs dbt_profiler_results__prod_marts_mart__bulk_tank_summary  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| uuid                           | varchar      |    24,656 |            1.000000 |           8259 |     False | 2024-01-02 10:08:44.301 UTC |
| db_name                        | varchar      |    24,656 |            1.000000 |              2 |     False | 2024-01-02 10:08:44.301 UTC |
| task_id                        | varchar      |    24,656 |            1.000000 |           8259 |     False | 2024-01-02 10:08:44.301 UTC |
| farm_id                        | varchar      |    24,656 |            1.000000 |            303 |     False | 2024-01-02 10:08:44.301 UTC |
| task_type                      | varchar      |    24,656 |            1.000000 |              1 |     False | 2024-01-02 10:08:44.301 UTC |
| record_date                    | timestamp(6) |    24,656 |            1.000000 |            877 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_collection_month          | timestamp(6) |    24,656 |            1.000000 |             33 |     False | 2024-01-02 10:08:44.301 UTC |
| milk_coop                      | varchar      |    24,656 |            0.349286 |             29 |     False | 2024-01-02 10:08:44.301 UTC |
| supplier_number                | bigint       |    24,656 |            0.243105 |            168 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_fat                  | double       |    24,656 |            0.461105 |            286 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_lactose              | double       |    24,656 |            0.344500 |            126 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_protein              | double       |    24,656 |            0.460861 |            203 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_solids               | double       |    24,656 |            0.042099 |            263 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_litres               | bigint       |    24,656 |            1.000000 |           5077 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_scc                  | bigint       |    24,656 |            0.442489 |            517 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_urea                 | double       |    24,656 |            0.170831 |            337 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_water                | double       |    24,656 |            0.057917 |             52 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_temperature          | double       |    24,656 |            0.638952 |            143 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_thermoduric_count    | bigint       |    24,656 |            0.043194 |            114 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_tbc                  | bigint       |    24,656 |            0.218933 |            209 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_no_of_milking_cows   | bigint       |    24,656 |            0.382179 |            272 |     False | 2024-01-02 10:08:44.301 UTC |
| bulk_tank_number_of_milking... | bigint       |    24,656 |            0.965242 |              5 |     False | 2024-01-02 10:08:44.301 UTC |
| kg_of_concentrate_fed_per_c... | double       |    24,656 |            0.001055 |              1 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_sum_litres             | bigint       |    24,656 |            1.000000 |            900 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_protein            | double       |    24,656 |            0.718892 |             13 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_fat                | double       |    24,656 |            0.717189 |             10 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_lactose            | double       |    24,656 |            0.445165 |              8 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_solids             | double       |    24,656 |            0.133314 |             46 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_scc                | double       |    24,656 |            0.704778 |            300 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_tbc                | double       |    24,656 |            0.678861 |            138 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_urea               | double       |    24,656 |            0.376663 |             65 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_temperature        | double       |    24,656 |            0.696017 |             16 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_thermoduric_count  | double       |    24,656 |            0.285934 |            118 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_no_of_cows         | double       |    24,656 |            0.495255 |            175 |     False | 2024-01-02 10:08:44.301 UTC |
| monthly_avg_feed               | double       |    24,656 |            0.003691 |              1 |     False | 2024-01-02 10:08:44.301 UTC |
| avg_litres_per_cow_per_day     | double       |    24,656 |            0.000000 |              0 |     False | 2024-01-02 10:08:44.301 UTC |
| litres_per_kg                  | double       |    24,656 |            0.000000 |              0 |     False | 2024-01-02 10:08:44.301 UTC |
{% enddocs %}
