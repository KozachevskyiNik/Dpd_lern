{% docs dbt_profiler_results__prod_domains_rds__animal_parentage_data  %}
| column_name         | data_type |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | --------- | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name             | varchar   | 13,868,584 |            1.000000 |              4 |     False | 2024-01-02 09:50:56.448 UTC |
| animal_id           | varchar   | 13,868,584 |            1.000000 |       13868584 |      True | 2024-01-02 09:50:56.448 UTC |
| dam_id              | varchar   | 13,868,584 |            0.489961 |        3443790 |     False | 2024-01-02 09:50:56.448 UTC |
| dam_sex             | varchar   | 13,868,584 |            0.489961 |              3 |     False | 2024-01-02 09:50:56.448 UTC |
| dam_tag             | varchar   | 13,868,584 |            0.489961 |        3191942 |     False | 2024-01-02 09:50:56.448 UTC |
| dam_breed           | varchar   | 13,868,584 |            0.489961 |            262 |     False | 2024-01-02 09:50:56.448 UTC |
| dam_total_children  | bigint    | 13,868,584 |            0.489961 |             34 |     False | 2024-01-02 09:50:56.448 UTC |
| sire_id             | varchar   | 13,868,584 |            0.317497 |         714306 |     False | 2024-01-02 09:50:56.448 UTC |
| sire_sex            | varchar   | 13,868,584 |            0.317497 |              4 |     False | 2024-01-02 09:50:56.448 UTC |
| sire_tag            | varchar   | 13,868,584 |            0.317497 |         136848 |     False | 2024-01-02 09:50:56.448 UTC |
| sire_breed          | varchar   | 13,868,584 |            0.317497 |            200 |     False | 2024-01-02 09:50:56.448 UTC |
| sire_pedigree       | varchar   | 13,868,584 |            0.245188 |          41977 |     False | 2024-01-02 09:50:56.448 UTC |
| sire_total_children | bigint    | 13,868,584 |            0.317497 |            347 |     False | 2024-01-02 09:50:56.448 UTC |
{% enddocs %}
