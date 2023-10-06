{% docs mart__get_counts_of_stock %}
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