{% docs dbt_profiler_results__prod_domains_rds__animal_milk_data  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                        | varchar      |    16,397 |            1.000000 |              2 |     False | 2024-01-02 09:50:36.869 UTC |
| task_id                        | varchar      |    16,397 |            1.000000 |           8206 |     False | 2024-01-02 09:50:36.869 UTC |
| farm_id                        | varchar      |    16,397 |            1.000000 |            303 |     False | 2024-01-02 09:50:36.869 UTC |
| task_type                      | varchar      |    16,397 |            1.000000 |              1 |     False | 2024-01-02 09:50:36.869 UTC |
| record_date                    | timestamp(6) |    16,397 |            1.000000 |            865 |     False | 2024-01-02 09:50:36.869 UTC |
| milk_coop                      | varchar      |    16,397 |            0.347686 |             29 |     False | 2024-01-02 09:50:36.869 UTC |
| supplier_number                | bigint       |    16,397 |            0.243032 |            167 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_fat                  | double       |    16,397 |            0.461487 |            286 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_lactose              | double       |    16,397 |            0.344636 |            126 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_protein              | double       |    16,397 |            0.461243 |            203 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_solids               | double       |    16,397 |            0.042081 |            258 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_litres               | bigint       |    16,397 |            1.000000 |           5056 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_scc                  | bigint       |    16,397 |            0.442825 |            516 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_urea                 | double       |    16,397 |            0.171129 |            337 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_water                | double       |    16,397 |            0.058059 |             52 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_temperature          | double       |    16,397 |            0.639568 |            143 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_thermoduric_count    | bigint       |    16,397 |            0.043179 |            114 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_tbc                  | bigint       |    16,397 |            0.218760 |            209 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_no_of_milking_cows   | bigint       |    16,397 |            0.381960 |            272 |     False | 2024-01-02 09:50:36.869 UTC |
| bulk_tank_number_of_milking... | bigint       |    16,397 |            0.965664 |              5 |     False | 2024-01-02 09:50:36.869 UTC |
| kg_of_concentrate_fed_per_c... | double       |    16,397 |            0.000915 |              1 |     False | 2024-01-02 09:50:36.869 UTC |
{% enddocs %}
