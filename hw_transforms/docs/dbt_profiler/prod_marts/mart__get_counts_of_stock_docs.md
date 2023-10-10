{% docs mart__get_counts_of_stock %}
| column_name                    | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ------------------------------ | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                        | varchar      | 1,498,604 |                   1 |              4 |     False | 2023-10-07 12:08:06.678 UTC |
| dt                             | timestamp(6) | 1,498,604 |                   1 |             58 |     False | 2023-10-07 12:08:06.678 UTC |
| farm_id                        | varchar      | 1,498,604 |                   1 |         25,838 |     False | 2023-10-07 12:08:06.678 UTC |
| under_6_start_of_month         | bigint       | 1,498,604 |                   1 |            927 |     False | 2023-10-07 12:08:06.678 UTC |
| under_6_born_in_month          | bigint       | 1,498,604 |                   1 |            451 |     False | 2023-10-07 12:08:06.678 UTC |
| under_6_bought_in_month        | bigint       | 1,498,604 |                   1 |              1 |     False | 2023-10-07 12:08:06.678 UTC |
| under_6_sold_in_month          | bigint       | 1,498,604 |                   1 |            329 |     False | 2023-10-07 12:08:06.678 UTC |
| under_6_died_in_month          | bigint       | 1,498,604 |                   1 |             41 |     False | 2023-10-07 12:08:06.678 UTC |
| between_7_12_start_of_month    | bigint       | 1,498,604 |                   1 |            723 |     False | 2023-10-07 12:08:06.678 UTC |
| between_7_12_bought_in_month   | bigint       | 1,498,604 |                   1 |              1 |     False | 2023-10-07 12:08:06.678 UTC |
| between_7_12_sold_in_month     | bigint       | 1,498,604 |                   1 |            193 |     False | 2023-10-07 12:08:06.678 UTC |
| between_7_12_died_in_month     | bigint       | 1,498,604 |                   1 |             15 |     False | 2023-10-07 12:08:06.678 UTC |
| between_13_18_start_of_month   | bigint       | 1,498,604 |                   1 |            660 |     False | 2023-10-07 12:08:06.678 UTC |
| between_13_18_bought_in_month  | bigint       | 1,498,604 |                   1 |              1 |     False | 2023-10-07 12:08:06.678 UTC |
| between_13_18_sold_in_month    | bigint       | 1,498,604 |                   1 |            178 |     False | 2023-10-07 12:08:06.678 UTC |
| between_13_18_died_in_month    | bigint       | 1,498,604 |                   1 |             17 |     False | 2023-10-07 12:08:06.678 UTC |
| between_19_24_start_of_month   | bigint       | 1,498,604 |                   1 |            630 |     False | 2023-10-07 12:08:06.678 UTC |
| between_19_24_bought_in_month  | bigint       | 1,498,604 |                   1 |              1 |     False | 2023-10-07 12:08:06.678 UTC |
| between_19_24_sold_in_month    | bigint       | 1,498,604 |                   1 |            231 |     False | 2023-10-07 12:08:06.678 UTC |
| between_19_24_died_in_month    | bigint       | 1,498,604 |                   1 |             25 |     False | 2023-10-07 12:08:06.678 UTC |
| male_over_25_start_of_month    | bigint       | 1,498,604 |                   1 |            530 |     False | 2023-10-07 12:08:06.678 UTC |
| male_over_25_bought_in_month   | bigint       | 1,498,604 |                   1 |              1 |     False | 2023-10-07 12:08:06.678 UTC |
| male_over_25_sold_in_month     | bigint       | 1,498,604 |                   1 |            230 |     False | 2023-10-07 12:08:06.678 UTC |
| male_over_25_died_in_month     | bigint       | 1,498,604 |                   1 |             20 |     False | 2023-10-07 12:08:06.678 UTC |
| female_over_25_start_of_month  | bigint       | 1,498,604 |                   1 |          1,226 |     False | 2023-10-07 12:08:06.678 UTC |
| female_over_25_bought_in_month | bigint       | 1,498,604 |                   1 |              1 |     False | 2023-10-07 12:08:06.678 UTC |
| female_over_25_sold_in_month   | bigint       | 1,498,604 |                   1 |            274 |     False | 2023-10-07 12:08:06.678 UTC |
| female_over_25_died_in_month   | bigint       | 1,498,604 |                   1 |             25 |     False | 2023-10-07 12:08:06.678 UTC |


# **Animal stock reconciliation Documentation** 
## 1. Calc Rules    
To be included into this table the animals must satisfy the below criteria   
The animal :
-  type must **NOT** be in ```AIBULL```, ```PREHW```
-  off herd reason must **NOT** be ```PREHW```
-  dob must **NOT** be equal to ```1970-01-01```
-  offherd date must **NOT** be equal to ```1970-01-01```
-  moved in date must **NOT** be equal to ```1970-01-01```
-  date of death must **NOT** be equal to ```1970-01-01```

## 2. Category  Calculation Rules

### Initial animal categories
* 0-6
	* diff in ```dob``` and ```calc month``` is between 0-6
	* ```calc month``` > ```move in date``` **OR** ```move in date is null```  **OR** ```dob = move in date```
	* ```off herd date``` > ```calc date``` **OR** ```off herd date is null```
* 7-12
	* diff in ```dob``` and ```calc month``` is between 7-12
	* ```calc month``` > ```move in date``` **OR** ```move in date is null```  **OR** ```dob = move in date```
	* ```off herd date``` > ```calc date``` or ```off herd date is null```
* 13-18
    * diff in ```dob``` and ```calc month``` is between 13-18
	* ```calc month``` > ```move in date``` **OR** ```move in date is null```  **OR** ```dob = move in date```
	* ```off herd date``` > ```calc date``` **OR** ```off herd date is null```
* 19-24
    * diff in ```dob``` and ```calc month``` is between 19-24
	* ```calc month``` > ```move in date``` **OR** ```move in date is null```  **OR** ```dob = move in date```
	* ```off herd date``` > ```calc date``` **OR** ```off herd date is null```
* 25+ (with gender info)
    * diff in ```dob``` and ```calc month``` greater than 25
	* ```calc month``` > ```move in date``` **OR** ```move in date is null```  **OR** ```dob = move in date```
	* ```off herd date``` > ```calc date``` **OR** ```off herd date is null```


### Rules for calculating sums within each subcategory 
* start of month
	* calc month > move in date
	* move out date > calc month
* born on farm
	 * dob in calc month
	 * move in date = dob or null
* bought in month
	* move in date in calc month
	* move in date != dob
* sold in month
	* move out date in calc month
	* move out date != dod
* died in month
	* dod in calc month 
	



{% enddocs %}