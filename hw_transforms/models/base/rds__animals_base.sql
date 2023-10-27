with
    ao_with_factory as (
        select
            ao.db as db_name,
            ao.animal_id as animal_id,
            aof.dead_weight as dead_weight,
            aof.price_per_kilo as price_per_kilo,
            aof.kill_out_grade as kill_out_grade,
            aof.killsheet_date as killsheet_datetime,
            aof.killsheet_name as killsheet_name,
            aof.mart_date as mart_datetime,
            aof.mart_name as mart_name,
            {% if target.name == "beta" %} cast(null as double) as purchase_weight,
            {% else %} aof.purchase_weight as purchase_weight,
            {% endif %}
            aof.sale_weight as sale_weight,
            aof.is_animal_weight_calculated as calc_wt_flag
        from
            {% if target.name == "beta" %}
                {{ source("rds_beta", "beta_animal_option") }}
            {% else %} {{ source("rds_prod", "animal_option") }}
            {% endif %} as ao
        inner join
            {% if target.name == "beta" %}
                {{ source("rds_beta", "beta_animal_option_factory") }}
            {% else %} {{ source("rds_prod", "animal_option_factory") }}
            {% endif %} as aof on ao.id = aof.id and ao.db = aof.db
    ),

    seller_names as (
        select
            a.db as db_name,
            a.id as animal_id,
            o.id as operator_id,
            o.herdnumber as operator_herd_number,
            o.name as operator_name,
            o.type as operator_type
        from
            {% if target.name == "beta" %} {{ source("rds_beta", "beta_animal") }}
            {% else %} {{ source("rds_prod", "animal") }}
            {% endif %} as a
        inner join
            {% if target.name == "beta" %} {{ source("rds_beta", "beta_operator") }}
            {% else %} {{ source("rds_prod", "operator") }}
            {% endif %} as o on a.db = o.db and a.buyer_id = o.id

    ),

    buyer_names as (
        select
            a.db as db_name,
            a.id as animal_id,
            o.id as operator_id,
            o.herdnumber as operator_herd_number,
            o.name as operator_name,
            o.type as operator_type
        from
            {% if target.name == "beta" %} {{ source("rds_beta", "beta_animal") }}
            {% else %} {{ source("rds_prod", "animal") }}
            {% endif %} as a
        inner join
            {% if target.name == "beta" %} {{ source("rds_beta", "beta_operator") }}
            {% else %} {{ source("rds_prod", "operator") }}
            {% endif %} as o on a.db = o.db and a.supplier_id = o.id
    )
select
    a.db as db_name,
    a.id as animal_id,
    a.species_id as species,
    a.sex as sex,
    a.farm_id as farm_id,
    a.tag as tag,
    {{ cast_timestamp("a.dob") }} as dob_date,
    {{ cast_timestamp("a.dod") }} as dod_date,
    regexp_replace(a.breed_id, '\-(.*)', '') as breed,
    a.inherd as in_herd_flag,
    -- condition is used to remove false move in dates for animals not sold at mart
    {{
        cast_timestamp(
            "if((a.animal_type_id = 'BORNONFARM' and a.offherddate is null),a.dob,a.datemovedin)"
        )
    }}
    as moved_in_date,
    {{ cast_timestamp("a.offherddate") }} as off_herd_date,
    a.offherdreason as off_herd_reason,
    a.stockbull as stock_bull_flag,
    a.pedigree as pedigree,
    a.freezebrand as freezebrand,
    a.dam as dam_id,
    a.geneticdamtag as genetic_dam_tag,
    a.sire as sire_id,
    {{ cast_timestamp("a.calfregsuccessdate") }} as calf_reg_datetime,
    a.size as size,
    a.vigor as vigor,
    a.purpose_id as purpose,
    a.animal_type_id as animal_type_id,
    a.source as source,
    -- animal financials
    a.purchaseprice as purchase_price,
    a.saleprice as sale_price,
    awf.purchase_weight as purchase_weight,
    awf.sale_weight as sale_weight,
    awf.dead_weight as dead_weight,
    awf.kill_out_grade as kill_out_grade,
    awf.price_per_kilo as price_per_kilo,
    awf.killsheet_name as killsheet_name,
    {{ cast_timestamp("awf.killsheet_datetime") }} as killsheet_datetime,
    awf.mart_name as mart_name,
    {{ cast_timestamp("awf.mart_datetime") }} as mart_datetime,
    awf.calc_wt_flag as calc_wt_flag,
    -- animal purchase
    a.supplier_id as supplier_id,
    a.buyer_id as buyer_id,
    bn.operator_herd_number as buyer_herd,
    bn.operator_name as buyer_name,
    sn.operator_herd_number as seller_herd,
    sn.operator_name as seller_name

{% if target.name == "beta" %} from {{ source("rds_beta", "beta_animal") }} as a
{% else %} from {{ source("rds_prod", "animal") }} as a
{% endif %}
left join ao_with_factory as awf on a.db = awf.db_name and a.id = awf.animal_id
left join buyer_names as bn on a.db = bn.db_name and a.id = bn.animal_id
left join seller_names as sn on a.db = sn.db_name and a.id = sn.animal_id
where (a.source != 'SEARCH_SRW' or a.source is null) and a.deleted = 0
