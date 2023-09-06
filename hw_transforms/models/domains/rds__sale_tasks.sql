{# select distinct
    mt.db_name,
    mt.animal_id,
    mt.type_id,
    if(
        mt.type_id in ('CERTAPPLY', 'EXTMOVEOFF'),
        {{ cast_timestamp("mt.record_date") }},
        null
    ) as sale_date,
    if(
        mt.type_id in ('CERTAPPLY', 'EXTMOVEOFF'), mt.operator_herd_number, null
    ) as sold_to_herd,
    if(
        mt.type_id in ('CERTAPPLY', 'EXTMOVEOFF'), mt.operator_herd_number, null
    ) as sold_to_name
from {{ ref("rds__movement_tasks") }} as mt
where
    mt.type_id in ('CERTAPPLY', 'EXTMOVEOFF')
    and mt.move_apply_success_datetime is not null
union #}
select distinct
    mt.db_name,
    mt.animal_id,
    mt.type_id,
    if(
        mt.type_id = 'LIVESTOCK_SALES', {{ cast_timestamp("mt.record_date") }}, null
    ) as sale_date,
    if(
        mt.type_id = 'LIVESTOCK_SALES', mt.operator_herd_number, null
    ) as sold_to_herd,
    if(mt.type_id = 'LIVESTOCK_SALES', mt.operator_name, null) as sold_to_name
from {{ ref("rds__movement_tasks") }} as mt
where mt.type_id = 'LIVESTOCK_SALES'
