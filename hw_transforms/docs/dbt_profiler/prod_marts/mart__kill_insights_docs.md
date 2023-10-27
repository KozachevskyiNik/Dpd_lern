{% docs mart__kill_insights_doc %}
| column_name         | data_type    |  row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------- | ------------ | ---------- | ------------------- | -------------- | --------- | --------------------------- |
| uuid                | varchar      | 10,740,419 |            1.000000 |       10740419 |      True | 2023-10-26 15:22:25.445 UTC |
| db_name             | varchar      | 10,740,419 |            1.000000 |              3 |     False | 2023-10-26 15:22:25.445 UTC |
| animal_id           | varchar      | 10,740,419 |            1.000000 |       10740419 |      True | 2023-10-26 15:22:25.445 UTC |
| animal_type         | varchar      | 10,740,419 |            1.000000 |              2 |     False | 2023-10-26 15:22:25.445 UTC |
| farm_id             | varchar      | 10,740,419 |            1.000000 |          23972 |     False | 2023-10-26 15:22:25.445 UTC |
| in_herd_flag        | bigint       | 10,740,419 |            1.000000 |              2 |     False | 2023-10-26 15:22:25.445 UTC |
| species             | varchar      | 10,740,419 |            1.000000 |              1 |     False | 2023-10-26 15:22:25.445 UTC |
| sex                 | varchar      | 10,740,419 |            1.000000 |              4 |     False | 2023-10-26 15:22:25.445 UTC |
| tag                 | varchar      | 10,740,419 |            1.000000 |        9696048 |     False | 2023-10-26 15:22:25.445 UTC |
| breed               | varchar      | 10,740,419 |            1.000000 |            299 |     False | 2023-10-26 15:22:25.445 UTC |
| move_in_date        | timestamp(6) | 10,740,419 |            0.665219 |           8012 |     False | 2023-10-26 15:22:25.445 UTC |
| off_herd_date       | timestamp(6) | 10,740,419 |            0.697111 |           3780 |     False | 2023-10-26 15:22:25.445 UTC |
| dob                 | timestamp(6) | 10,740,419 |            1.000000 |           9024 |     False | 2023-10-26 15:22:25.445 UTC |
| calf_reg_date       | timestamp(6) | 10,740,419 |            0.267765 |        2771879 |     False | 2023-10-26 15:22:25.445 UTC |
| age_in_days         | bigint       | 10,740,419 |            0.697111 |           7808 |     False | 2023-10-26 15:22:25.445 UTC |
| age_in_months       | bigint       | 10,740,419 |            0.697111 |            404 |     False | 2023-10-26 15:22:25.445 UTC |
| dam_id              | varchar      | 10,740,419 |            0.583442 |        3117640 |     False | 2023-10-26 15:22:25.445 UTC |
| dam_tag             | varchar      | 10,740,419 |            0.655470 |        3396137 |     False | 2023-10-26 15:22:25.445 UTC |
| dam_breed           | varchar      | 10,740,419 |            0.583442 |            254 |     False | 2023-10-26 15:22:25.445 UTC |
| dam_total_children  | bigint       | 10,740,419 |            0.583442 |             33 |     False | 2023-10-26 15:22:25.445 UTC |
| sire_id             | varchar      | 10,740,419 |            0.382303 |         624436 |     False | 2023-10-26 15:22:25.445 UTC |
| sire_tag            | varchar      | 10,740,419 |            0.382303 |         128344 |     False | 2023-10-26 15:22:25.445 UTC |
| sire_breed          | varchar      | 10,740,419 |            0.382303 |            189 |     False | 2023-10-26 15:22:25.445 UTC |
| sire_total_children | bigint       | 10,740,419 |            0.382303 |            344 |     False | 2023-10-26 15:22:25.445 UTC |
| sale_date           | timestamp(6) | 10,740,419 |            0.697111 |           3780 |     False | 2023-10-26 15:22:25.445 UTC |
| purchase_date       | timestamp(6) | 10,740,419 |            0.665219 |           8012 |     False | 2023-10-26 15:22:25.445 UTC |
| sourced_from        | varchar      | 10,740,419 |            0.087437 |          73027 |     False | 2023-10-26 15:22:25.445 UTC |
| sourced_from_name   | varchar      | 10,740,419 |            0.106334 |          80133 |     False | 2023-10-26 15:22:25.445 UTC |
| sold_to             | varchar      | 10,740,419 |            0.461312 |          53873 |     False | 2023-10-26 15:22:25.445 UTC |
| sold_to_name        | varchar      | 10,740,419 |            0.483284 |          74791 |     False | 2023-10-26 15:22:25.445 UTC |
| purchase_price      | double       | 10,740,419 |            0.011199 |           2184 |     False | 2023-10-26 15:22:25.445 UTC |
| sale_price          | double       | 10,740,419 |            0.023421 |          12487 |     False | 2023-10-26 15:22:25.445 UTC |
| fat_str             | varchar      | 10,740,419 |            0.000576 |             61 |     False | 2023-10-26 15:22:25.445 UTC |
| conf_str            | varchar      | 10,740,419 |            0.000576 |             46 |     False | 2023-10-26 15:22:25.445 UTC |
| fat_conf_encoded    | integer      | 10,740,419 |            0.000499 |             85 |     False | 2023-10-26 15:22:25.445 UTC |
| live_weight         | double       | 10,740,419 |            0.000055 |            182 |     False | 2023-10-26 15:22:25.445 UTC |
| derived_live_wt     | double       | 10,740,419 |            0.012624 |           1213 |     False | 2023-10-26 15:22:25.445 UTC |
| dead_weight         | double       | 10,740,419 |            0.000619 |           2634 |     False | 2023-10-26 15:22:25.445 UTC |
| ppkg_live           | double       | 10,740,419 |            0.002493 |           1274 |     False | 2023-10-26 15:22:25.445 UTC |
| days_in_herd        | bigint       | 10,740,419 |            0.691337 |           7123 |     False | 2023-10-26 15:22:25.445 UTC |
| months_in_herd      | bigint       | 10,740,419 |            0.691337 |            312 |     False | 2023-10-26 15:22:25.445 UTC |
| gross_margin        | double       | 10,740,419 |            0.017787 |           9305 |     False | 2023-10-26 15:22:25.445 UTC |
| gross_margin_dih    | double       | 10,740,419 |            0.017787 |           3273 |     False | 2023-10-26 15:22:25.445 UTC |
| adg_in_herd         | double       | 10,740,419 |            0.012664 |           1779 |     False | 2023-10-26 15:22:25.445 UTC |
| kill_out_percentage | double       | 10,740,419 |            0.000113 |           1199 |     False | 2023-10-26 15:22:25.445 UTC |



# **Killsheet Insights Documentation**
This mart table is created for serving Killsheet insights to the online only insights service in the herdwatch application.   
The final Athena table is synced to the postgres databases that the application uses to connect and query.   
## 1. Inclusion Rules    
To be included into this table the animals must satisfy the below criteria   
The animal :
-  type must **NOT** be in ```AIBULL```, ```PREHW```
-  off herd reason must **NOT** be ```PREHW```
-  dob must **NOT** be equal to ```1970-01-01```
-  offherd date must **NOT** be equal to ```1970-01-01```
-  moved in date must **NOT** be equal to ```1970-01-01```
-  date of death must **NOT** be equal to ```1970-01-01```
-  type of Species **MUST BE** equal to ```BOVINE```
{% enddocs %}