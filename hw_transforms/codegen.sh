dbt run-operation generate_source --args '{"schema_name": "hw_replicate","database_name": "awsdatacatalog", "generate_columns": true, "include_descriptions": true, "include_data_types": true, "table_pattern": "beta_%", "exclude": "%_underlying_%" , "name": "rds_beta", "include_database": true, "include_schema": true}'|sed 1,5d > codegen/beta_sources_codegen.yml
dbt run-operation generate_source --args '{"schema_name": "hw_replicate","database_name": "awsdatacatalog", "generate_columns": true, "include_descriptions": true, "include_data_types": true, "exclude": "%_underlying_%" , "name": "rds_prod", "include_database": true, "include_schema": true}'|sed 1,5d > codegen/prod_sources_codegen.yml
dbt -q ls --resource-type model | grep base |cut -d '.' -f3 > codegen/base/base_model_list
dbt -q ls --resource-type model | grep domains |cut -d '.' -f3 > codegen/domain/domain_model_list
dbt -q ls --resource-type model | grep marts |cut -d '.' -f3  > codegen/mart/mart_model_list
while read -r line
do
    dbt run-operation generate_model_yaml --args '{"model_names": ['$line'],"upstream_descriptions":true,"include_data_types":true}' |sed 1,5d > codegen/base/"$line"_codegen.yml
    ./profile-generator.sh "$line" prod_base
done  < codegen/base/base_model_list

while read -r line
do
    dbt run-operation generate_model_yaml --args '{"model_names": ['$line'],"upstream_descriptions":true,"include_data_types":true}' |sed 1,5d > codegen/domain/"$line"_codegen.yml
    ./profile-generator.sh "$line" prod_domains
done  < codegen/domain/domain_model_list

while read -r line
do
    dbt run-operation generate_model_yaml --args '{"model_names": ['$line'],"upstream_descriptions":true,"include_data_types":true}' |sed 1,5d > codegen/mart/"$line"_codegen.yml
    ./profile-generator.sh "$line" prod_marts
done  < codegen/mart/mart_model_list


