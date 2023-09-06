{% docs __overview__ %}
# Herdwatch DBT Playbook
- This project is used to create meaningful data models in an efficient and reproducible way with Engineering best practices built in to the development flow.   
- DBT allows us to create tranformation code in pure sql which can be run in a parallelized way using AWS Athena.   
- This allows for complex logic , window functions, CTE's over billions of rows with no infrastructure maintainence requirements.   
- We can version control this code and use JINJA templating to create functions within SQL for repeated queries as well as use control statements like loops.   
- There are also automatic tests that we can write which help us to verify integrity of data every time the pipeline is run giving us high confidence  in the underlying data models we will use for various reports/ app modules.

## Lifecycle of a pipeline
Any pipeline in herdwatch follows the below lifecycle : 
1. Replication of RDS table is setup into the data lake under the ```bronze``` layer
2. Base tables are created with rudimentary joins (animals with herds, tasks with task animals etc)
3. Domain tables are created for specific verticals within Herdwatch. (weighing tasks, movements tasks, animals parentage data etc).  These contain agregations and pre calculations that will be needed in future/downstream models
4. Data marts are created as a final table which bring all relevant columns from domain tables joined to base tables. These tables can be directly connected-to via BI tools or as in the case of insights can be used as the table where API requests are served from. *Typical query times 1-5 sec*.
5. [OPTIONAL] Domain tables are replicated to an Aurora Postgres instance in cases where the asyncronous nature of Athena is incompatible with end-product. *Typical query times under 1 sec*.

## Building models
1. Base layers should only be built by the Data Engineering Team as it is the single source of truth for all the data flowing into the data lake.
2. Analysts **AND** developers can freely build domain tables as required and  materialize them as tables into the ```domain``` layer. This layer can be further decomposed to  cattle, sheep , crops etc.
3. Marts can be matrialzied as tables into the ```mart``` layer once verified as accurate using athena interface to export sample csv.
4. Beta data can be used as a test env for building and verifying models as currently it is the most accurate representaion on live data.

## Style guide
- Models should be named as follows ```<source>__<domain>``` for e.g. ```rds__movement_tasks```
- All sql should be in lowercase
- SQL formating should follow rules sepcified in the [sqlfmt style guide](https://docs.sqlfmt.com/style/). This can be setup to run automatically on vscode in your local development environment.
- Always use a single model for both prod and beta. Make use of JINJA to select the correct env needed as based on the DBT target variable. Check any of the currently deployed models as a reference. 




#### Helpful Links:
- [DBT Docs](https://docs.getdbt.com/docs/introduction)
- [Project Structure Best Practices Guide](https://docs.getdbt.com/guides/best-practices/how-we-structure/1-guide-overview)

{% enddocs %}