with
    ao_with_factory as (
        select
            ao.db_name as db_name,
            ao.animal_id as animal_id,
            aof.mart_datetime as mart_datetime,
            aof.mart_name as mart_name,
            aof.mart_weight as mart_weight,
            aof.killsheet_datetime as killsheet_datetime,
            aof.killsheet_name as killsheet_name,
            aof.kill_out_grade as kill_out_grade,
            aof.dead_weight as dead_weight,
            aof.price_per_kilo as price_per_kilo,
            aof.is_animal_weight_calculated as calc_wt_flag
        from
            {% if target.name == "beta" %}
                {{ source("rds_beta", "beta__animal_options") }}
            {% else %} {{ source("rds_prod", "rds__animal_options") }}
            {% endif %} as ao
        inner join
            {% if target.name == "beta" %}
                {{ source("rds_beta", "beta__animal_option_factories") }}
            {% else %} {{ source("rds_prod", "rds__animal_option_factories") }}
            {% endif %} as aof
            on ao.animal_option_id = aof.animal_option_id
            and ao.db_name = aof.db_name
    ),

    seller_names as (
        select
            a.db_name,
            a.animal_id,
            o.operator_id as operator_id,
            o.herd_number as operator_herd_number,
            o.name as operator_name,
            o.type as operator_type
        from
            {% if target.name == "beta" %} {{ source("rds_beta", "beta__animals") }}
            {% else %} {{ source("rds_prod", "rds__animals") }}
            {% endif %} as a
        inner join
            {% if target.name == "beta" %} {{ source("rds_beta", "beta__operators") }}
            {% else %} {{ source("rds_prod", "rds__operators") }}
            {% endif %} as o on a.db_name = o.db_name and a.buyer_id = o.operator_id

    ),

    buyer_names as (
        select
            a.db_name,
            a.animal_id,
            o.operator_id as operator_id,
            o.herd_number as operator_herd_number,
            o.name as operator_name,
            o.type as operator_type
        from
            {% if target.name == "beta" %} {{ source("rds_beta", "beta__animals") }}
            {% else %} {{ source("rds_prod", "rds__animals") }}
            {% endif %} as a
        inner join
            {% if target.name == "beta" %} {{ source("rds_beta", "beta__operators") }}
            {% else %} {{ source("rds_prod", "rds__operators") }}
            {% endif %} as o on a.db_name = o.db_name and a.supplier_id = o.operator_id
    )
select
    a.db_name as db_name,
    a.animal_id as animal_id,
    a.species_id as species,
    a.sex as sex,
    a.farm_id as farm_id,
    a.tag as tag,
    {{ cast_timestamp("a.dob_date") }} as dob_date,
    {{ cast_timestamp("a.dod_date") }} as dod_date,
    regexp_replace(a.breed_id, '\-(.*)', '') as breed,
    a.in_herd as in_herd_flag,
    {{ cast_timestamp("a.date_moved_in") }} as moved_in_date,
    {{ cast_timestamp("a.off_herd_date") }} as off_herd_date,
    a.off_herd_reason as off_herd_reason,
    a.stock_bull as stock_bull_flag,
    a.pedigree as pedigree,
    a.freezebrand as freezebrand,
    a.dam as dam_id,
    a.genetic_dam_tag as genetic_dam_tag,
    a.sire as sire_id,
    {{ cast_timestamp("a.calf_reg_datetime") }} as calf_reg_datetime,
    a.size as size,
    a.vigor as vigor,
    a.purpose_id as purpose,
    a.animal_type_id as animal_type_id,
    -- animal financials
    a.purchase_price as purchase_price,
    awf.mart_name as mart_name,
    awf.mart_datetime as mart_datetime,
    if(
        from_unixtime(awf.mart_datetime) >= date_add('day', 1, a.date_moved_in),
        awf.mart_weight,
        null
    ) as sale_weight,
    if(
        from_unixtime(awf.mart_datetime) <= date(a.date_moved_in), awf.mart_weight, null
    ) as purchase_weight,
    a.saleprice as sale_price,
    awf.killsheet_name as killsheet_name,
    awf.killsheet_datetime as killsheet_datetime,
    awf.kill_out_grade as kill_out_grade,
    awf.dead_weight as dead_weight,
    awf.price_per_kilo as price_per_kilo,
    awf.calc_wt_flag as calc_wt_flag,
    -- animal purchase
    a.supplier_id as supplier_id,
    a.buyer_id as buyer_id,
    bn.operator_herd_number as buyer_herd,
    bn.operator_name as buyer_name,
    sn.operator_herd_number as seller_herd,
    sn.operator_name as seller_name

{% if target.name == "beta" %} from {{ source("rds_beta", "beta__animals") }} as a
{% else %} from {{ source("rds_prod", "rds__animals") }} as a
{% endif %}
left join
    ao_with_factory as awf on a.db_name = awf.db_name and a.animal_id = awf.animal_id
left join buyer_names as bn on a.db_name = bn.db_name and a.animal_id = bn.animal_id
left join seller_names as sn on a.db_name = sn.db_name and a.animal_id = sn.animal_id
