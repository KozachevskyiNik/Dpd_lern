{% docs mart__farm_ranking %}
| column_name                   | data_type | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------------- | --------- | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                       | varchar   |    23,996 |            1.000000 |              4 |     False | 2024-01-31 14:01:54.467 UTC |
| ranking_date                  | date      |    23,996 |            1.000000 |              1 |     False | 2024-01-31 14:01:54.467 UTC |
| user_id                       | bigint    |    23,996 |            1.000000 |          14011 |     False | 2024-01-31 14:01:54.467 UTC |
| farm_id                       | varchar   |    23,996 |            1.000000 |          16218 |     False | 2024-01-31 14:01:54.467 UTC |
| herd_number                   | varchar   |    23,996 |            1.000000 |          16209 |     False | 2024-01-31 14:01:54.467 UTC |
| national_herd_id              | varchar   |    23,996 |            0.524337 |           8940 |     False | 2024-01-31 14:01:54.467 UTC |
| county                        | varchar   |    23,996 |            0.742957 |            116 |     False | 2024-01-31 14:01:54.467 UTC |
| plan_type                     | varchar   |    23,996 |            1.000000 |             16 |     False | 2024-01-31 14:01:54.467 UTC |
| origin_app_type               | varchar   |    23,996 |            1.000000 |              3 |     False | 2024-01-31 14:01:54.467 UTC |
| farm_option                   | varchar   |    23,996 |            0.961410 |              6 |     False | 2024-01-31 14:01:54.467 UTC |
| farm_level                    | varchar   |    23,996 |            0.619478 |              3 |     False | 2024-01-31 14:01:54.467 UTC |
| farm_band                     | varchar   |    23,996 |            0.998333 |             27 |     False | 2024-01-31 14:01:54.467 UTC |
| yearly_app_login              | double    |    23,996 |            1.000000 |            543 |     False | 2024-01-31 14:01:54.467 UTC |
| tasks_per_primary_unit        | double    |    23,996 |            1.000000 |            486 |     False | 2024-01-31 14:01:54.467 UTC |
| task_types_and_reports        | double    |    23,996 |            1.000000 |            389 |     False | 2024-01-31 14:01:54.467 UTC |
| login_freq_metric             | integer   |    23,996 |            1.000000 |              5 |     False | 2024-01-31 14:01:54.467 UTC |
| tasks_per_primary_metric      | integer   |    23,996 |            1.000000 |              5 |     False | 2024-01-31 14:01:54.467 UTC |
| task_types_and_reports_metric | integer   |    23,996 |            1.000000 |              5 |     False | 2024-01-31 14:01:54.467 UTC |
| final_star_ranking            | double    |    23,996 |            1.000000 |             13 |     False | 2024-01-31 14:01:54.467 UTC |

# **Farm Ranking Documentation** 
## 1. Calc Rules    
- All farms in Herdwatch freebasic or paid are included in the farm ranking calulcation
- Ranking is calculated per app type over 1 year from date when job is run e.g. a single farm can be Herdwatch and/or cropwatch and/or flockwatch enabled
- For each farm 3 main metrics are calucalted
    -  Login frequency metric
    -  Tasks per primary unit metric 
        - This is tasks per animal for Hw and FW and tasks per paddock for CW
    -  task_types_and_reports_metric
-  Final ranking is avg of all metrics above


## 2. Category Calculation Rules

### Login frequency metric
* Base data present in Bigquery
* We count the avg number of times an HW232 event has occured for each app type in the past year that we have data for. *currently from Nov 23 onwards*
* Login frequency metric mapping table :


| Login frequency average value 	| Corresponding star value for the metric 	|
|-------------------------------	|-----------------------------------------	|
| >12                           	| 5                                       	|
| >8                            	| 4                                       	|
| >4                            	| 3                                       	|
| >2                            	| 2                                       	|
| <2                            	| 1                                       	|

### Tasks per primary unit metric
* Base data from tasks and tasks general tables
* We count the avg number of unique tasks in the past year that we have data for grouped by farm type.
* This value is then divided by the primary unit of the farm. animals for HW nad FW and paddocks for CW.
* Tasks per primary unit metric mapping table :


| Tasks per primary metric value 	| Corresponding star value for the metric 	|
|-------------------------------	|-----------------------------------------	|
| >2                            	| 5                                       	|
| >1                            	| 4                                       	|
| >0.5                            	| 3                                       	|
| >0                            	| 2                                       	|
| ==0                            	| 1                                       	|

### Task types and reports metric
* Base data from tasks and eventlog tables
* This metric is made of two parts
    * a. We count the avg number of unique task types in the past year that we have data for grouped by farm type.
    * b. We calculate avg no of reports generated  IF this value > 0 then report flag is 1 else 0
* Task types and report  = sum of sub metrics from above point.
* Tasks per primary unit metric mapping table :

| Task types and reports metric value 	| Corresponding star value for the metric 	|
|-------------------------------------	|-----------------------------------------	|
| >8                                  	| 5                                       	|
| >5                                  	| 4                                       	|
| >3                                  	| 3                                       	|
| >1                                  	| 2                                       	|
| 0 => 1                              	| 1                                       	|



## 3. Final star rating calculation
This is the final step after the 3 base metrics are collected:
* A = Login frequency metric.
* B = Tasks per primary unit metric.
* C = Task type and report generation metric.

Once we have the above 3 stats collected we need to take their average.

Final star rating  = A+B+C / 3

Final value is rounded up to 2 decimal places

{% enddocs %}