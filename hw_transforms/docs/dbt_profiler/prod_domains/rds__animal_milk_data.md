{% docs dbt_profiler_results__prod_domains_rds__animal_milk_data  %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                        | varchar      |    16,900 |            1.000000 |              2 |     False | 2024-01-31 13:53:46.321 UTC |
| task_id                        | varchar      |    16,900 |            1.000000 |            449 |     False | 2024-01-31 13:53:46.321 UTC |
| farm_id                        | varchar      |    16,900 |            1.000000 |             45 |     False | 2024-01-31 13:53:46.321 UTC |
| task_type                      | varchar      |    16,900 |            1.000000 |              1 |     False | 2024-01-31 13:53:46.321 UTC |
| record_date                    | timestamp(6) |    16,900 |            1.000000 |            110 |     False | 2024-01-31 13:53:46.321 UTC |
| milk_coop                      | varchar      |    16,900 |            1.000000 |             22 |     False | 2024-01-31 13:53:46.321 UTC |
| supplier_number                | bigint       |    16,900 |            0.332012 |             25 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_fat                  | double       |    16,900 |            0.411834 |            103 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_lactose              | double       |    16,900 |            0.379349 |             58 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_protein              | double       |    16,900 |            0.411834 |             89 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_solids               | double       |    16,900 |            0.226036 |            128 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_litres               | bigint       |    16,900 |            1.000000 |            433 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_scc                  | bigint       |    16,900 |            0.397101 |            113 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_urea                 | double       |    16,900 |            0.083787 |             18 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_water                | double       |    16,900 |            0.036982 |             12 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_temperature          | double       |    16,900 |            0.430296 |             51 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_thermoduric_count    | bigint       |    16,900 |            0.041657 |              4 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_tbc                  | bigint       |    16,900 |            0.360828 |             42 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_no_of_milking_cows   | bigint       |    16,900 |            0.507278 |             73 |     False | 2024-01-31 13:53:46.321 UTC |
| bulk_tank_number_of_milking... | bigint       |    16,900 |            0.759822 |              3 |     False | 2024-01-31 13:53:46.321 UTC |
| kg_of_concentrate_fed_per_c... | double       |    16,900 |            0.113846 |              8 |     False | 2024-01-31 13:53:46.321 UTC |
{% enddocs %}
