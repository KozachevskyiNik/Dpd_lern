{% docs dbt_profiler_results__prod_domains_rds__movement_tasks  %}
| column_name                 | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| --------------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| task_id                     | varchar      | 7,742,775 |            1.000000 |        1215344 |     False | 2024-01-02 09:53:07.775 UTC |
| db_name                     | varchar      | 7,742,775 |            1.000000 |              2 |     False | 2024-01-02 09:53:07.775 UTC |
| country                     | varchar      | 7,742,775 |            1.000000 |              4 |     False | 2024-01-02 09:53:07.775 UTC |
| type_id                     | varchar      | 7,742,775 |            1.000000 |              2 |     False | 2024-01-02 09:53:07.775 UTC |
| animal_id                   | varchar      | 7,742,775 |            1.000000 |        3721517 |     False | 2024-01-02 09:53:07.775 UTC |
| farm_id                     | varchar      | 7,742,775 |            1.000000 |          18453 |     False | 2024-01-02 09:53:07.775 UTC |
| record_date                 | timestamp(6) | 7,742,775 |            1.000000 |           1356 |     False | 2024-01-02 09:53:07.775 UTC |
| record_belongs_to_app       | varchar      | 7,742,775 |            1.000000 |              1 |     False | 2024-01-02 09:53:07.775 UTC |
| tag                         | varchar      | 7,742,775 |            0.999942 |        3391536 |     False | 2024-01-02 09:53:07.775 UTC |
| dob_date                    | timestamp(6) | 7,742,775 |            0.999942 |           7388 |     False | 2024-01-02 09:53:07.775 UTC |
| breed                       | varchar      | 7,742,775 |            0.999942 |            242 |     False | 2024-01-02 09:53:07.775 UTC |
| moved_in_date               | timestamp(6) | 7,742,775 |            0.927959 |           6773 |     False | 2024-01-02 09:53:07.775 UTC |
| off_herd_date               | timestamp(6) | 7,742,775 |            0.831303 |           1406 |     False | 2024-01-02 09:53:07.775 UTC |
| off_herd_reason             | varchar      | 7,742,775 |            0.565953 |             30 |     False | 2024-01-02 09:53:07.775 UTC |
| sale_price                  | double       | 7,742,775 |            0.068750 |          12084 |     False | 2024-01-02 09:53:07.775 UTC |
| purchase_price              | double       | 7,742,775 |            0.131599 |           2252 |     False | 2024-01-02 09:53:07.775 UTC |
| move_cert_type              | varchar      | 7,742,775 |            0.000000 |              0 |     False | 2024-01-02 09:53:07.775 UTC |
| operator_herd_number        | varchar      | 7,742,775 |            0.627883 |          77816 |     False | 2024-01-02 09:53:07.775 UTC |
| operator_name               | varchar      | 7,742,775 |            0.818426 |          97647 |     False | 2024-01-02 09:53:07.775 UTC |
| operator_type               | varchar      | 7,742,775 |            0.818426 |              3 |     False | 2024-01-02 09:53:07.775 UTC |
| move_apply_success_datetime | timestamp(6) | 7,742,775 |            0.000000 |              0 |     False | 2024-01-02 09:53:07.775 UTC |
| herd_number                 | varchar      | 7,742,775 |            1.000000 |          18453 |     False | 2024-01-02 09:53:07.775 UTC |
| city                        | varchar      | 7,742,775 |            1.000000 |           1405 |     False | 2024-01-02 09:53:07.775 UTC |
| county                      | varchar      | 7,742,775 |            0.902156 |            120 |     False | 2024-01-02 09:53:07.775 UTC |
{% enddocs %}
