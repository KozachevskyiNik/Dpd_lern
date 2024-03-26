{# select distinct
    mt.db_name,
    mt.animal_id,
    mt.type_id,
    if(
        mt.type_id in ('CERTNOTIFY', 'EXMOVEON'),
        {{ cast_timestamp("mt.record_date") }},
        null
    ) as purchase_date,
    if(
        mt.type_id in ('CERTNOTIFY', 'EXMOVEON'), mt.operator_herd_number, null
    ) as sourced_from_herd,
    if(
        mt.type_id in ('CERTNOTIFY', 'EXMOVEON'), mt.operator_name, null
    ) as sourced_from_name
from {{ ref("rds__movement_tasks") }} as mt
where
    mt.type_id in ('CERTNOTIFY', 'EXMOVEON')
    and mt.move_apply_success_datetime is not null 

    union#}
select distinct
    mt.db_name,
    mt.animal_id,
    mt.type_id,
    if(
        mt.type_id = 'LIVESTOCK_PURCHASES', {{ cast_timestamp("mt.record_date") }}, null
    ) as purchase_date,
    if(
        mt.type_id = 'LIVESTOCK_PURCHASES', mt.operator_herd_number, null
    ) as sourced_from_herd,
    if(mt.type_id = 'LIVESTOCK_PURCHASES', mt.operator_name, null) as sourced_from_name
from {{ ref("rds__movement_tasks") }} as mt
where mt.type_id = 'LIVESTOCK_PURCHASES'
