{% docs mart__kill_insights %}
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

## 2. Special Fields Calculation Rules
The ```fat_conf_encoded``` is a feature that is used to easily sort fat and grade scores.   
The below tables show the distinct values of each ```fat``` and ```conf``` value and the final column value is derived using :   
```fat_conf_encoded = fat_mult * conf_mult```


| fat ie | fat uk | value |
|--------|--------|-------|
| E+     | -      | 15     |
| E=     | E      | 14     |
| E-     | -      | 13     |
| U+     | U+     | 12     |
| U=     | -      | 11    |
| U-     | -U     | 10    |
| R+     | -      | 9    |
| R=     | R      | 8    |
| R-     | -      | 7    |
| O+     | O+     | 6    |
| O=     | -      | 5     |
| O-     | -O     | 4     |
| P+     | P+     | 3     |
| P=     | -      | 2     |
| P-     | -P     | 1     |

| conf ie 	| conf uk 	| value 	|
|---------	|---------	|-------	|
| 1-      	| -       	| 1     	|
| 1=      	| 1       	| 2     	|
| 1+      	| -       	| 3     	|
| 2-      	| -       	| 7     	|
| 2=      	| 2       	| 8    	|
| 2+      	| -       	| 9    	|
| 3-      	| -       	| 11    	|
| 3=      	| 3       	| 13    	|
| 3+      	| -       	| 15    	|
| 4-      	| 4L      	| 14    	|
| 4=      	| 4H      	| 12     	|
| 4+      	| -       	| 10    	|
| 5-      	| 5L      	| 6     	|
| 5=      	| 5H      	| 4     	|
| 5+      	| -       	| 2     	|
{% enddocs %}