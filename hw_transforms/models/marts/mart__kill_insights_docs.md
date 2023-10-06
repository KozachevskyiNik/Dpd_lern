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
{% enddocs %}