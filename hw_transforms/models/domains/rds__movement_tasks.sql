with
    livestock_sale_purchase as (
        select
            t.db_name as db_name,
            t.task_id as task_id,
            'tls' as source_type,
            o.operator_id as operator_id,
            o.herd_number as operator_herd_number,
            o.name as operator_name,
            o.type as operator_type

        from {{ ref("rds__tasks_base") }} as t
        inner join
            {% if target.name == "beta" %}
                {{ source("rds_beta", "beta__livestock_sales") }}
            {% else %} {{ source("rds_prod", "rds__task_livestock_sales") }}
            {% endif %} as tls on t.db_name = tls.db_name and t.task_id = tls.task_id
        inner join
            {% if target.name == "beta" %} {{ source("rds_beta", "beta__operators") }}
            {% else %} {{ source("rds_prod", "rds__operators") }}
            {% endif %} as o on tls.db_name = o.db_name and tls.buyer_id = o.operator_id
        where o.type is not null
        union
        select
            t.db_name as db_name,
            t.task_id as task_id,
            'tlp' as source_type,
            o.operator_id as operator_id,
            o.herd_number as operator_herd_number,
            o.name as operator_name,
            o.type as operator_type
        from {{ ref("rds__tasks_base") }} as t
        inner join

            {% if target.name == "beta" %}
                {{ source("rds_beta", "beta__livestock_purchases") }}
            {% else %} {{ source("rds_prod", "rds__task_livestock_purchases") }}
            {% endif %} as tlp on t.db_name = tlp.db_name and t.task_id = tlp.task_id
        inner join
            {% if target.name == "beta" %} {{ source("rds_beta", "beta__operators") }}
            {% else %} {{ source("rds_prod", "rds__operators") }}
            {% endif %} as o
            on tlp.db_name = o.db_name
            and tlp.seller_id = o.operator_id
        where o.type is not null
    )
select
    -- general columns
    t.task_id as task_id,
    t.db_name as db_name,
    t.country as country,
    t.task_type as type_id,
    t.animal_id as animal_id,
    t.farm_id as farm_id,
    {{ cast_timestamp("t.record_date ") }} as record_date,
    t.record_belongs_to_app as record_belongs_to_app,
    -- animal cols
    a.tag as tag,
    {{ cast_timestamp("a.dob_date") }} as dob_date,
    a.breed as breed,
    {{ cast_timestamp("a.moved_in_date") }} as moved_in_date,
    {{ cast_timestamp("a.off_herd_date") }} as off_herd_date,
    a.off_herd_reason as off_herd_reason,
    a.sale_price,
    a.purchase_price,
    -- movement tasks columns
    t.move_cert_type as move_cert_type,
    lsp.operator_herd_number as operator_herd_number,
    lsp.operator_name as operator_name,
    lsp.operator_type as operator_type,
    {{ cast_timestamp("t.move_apply_success_datetime") }}
    as move_apply_success_datetime,
    -- user and farm cols
    uaf.herd_number as herd_number,
    uaf.city as city,
    uaf.county as county
-- uaf.farm_type as farm_type,
-- uaf.farm_option as farm_option,
-- uaf.farm_level as farm_level
from {{ ref("rds__tasks_base") }} as t
left join
    {{ ref("rds__animals_base") }} as a
    on t.db_name = a.db_name
    and t.animal_id = a.animal_id
left join
    {{ ref("rds__user_and_farm_base") }} as uaf
    on t.farm_id = uaf.farm_id
    and t.db_name = uaf.db_name
left join
    livestock_sale_purchase as lsp
    on t.db_name = lsp.db_name
    and t.task_id = lsp.task_id
where
    t.task_type in (
        {# 'CERTNOTIFY',
        'CERTAPPLY',
        'EXMOVEON',
        'EXTMOVEOFF', #}
        'LIVESTOCK_SALES',
        'LIVESTOCK_PURCHASES'
    )
    and t.status_id = 'COMPLETE'
