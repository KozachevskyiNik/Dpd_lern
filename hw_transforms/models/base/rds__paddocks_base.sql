select
    p.db as db_name,
    p.id as paddock_id,
    pm.map_id,
    p.farm_id,
    {{ cast_timestamp("p.created") }} as paddock_created_datetime,
    p.name as paddock_name,
    p.description,
    p.displayname as ui_name,
    p.measureflag as measure_flag,
    {% if target.name == "beta" %} cast(null as integer) as measure_order,
    {% else %} p.measureorder as measure_order,
    {% endif %}
    p.area,
    p.area_cm,
    p.locationcode as location_code,
    p.silagesuitable as silage_suitable,
    p.milkflag as milk_flag,
    p.fieldno as field_no,
    p.current_status_id,
    p.purpose_id,
    cast(null as integer) as walk_order,
    -- map data
    m.properties as map_properties,
    m.polygon as map_polygon
{% if target.name == "beta" %} from {{ source("rds_beta", "beta_paddock") }}
{% else %} from {{ source("rds_prod", "paddock") }}
{% endif %} as p
left join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta_paddock_maps") }}
    {% else %} {{ source("rds_prod", "paddock_maps") }}
    {% endif %} as pm on p.id = pm.paddock_id and p.db = pm.db
left join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta_maps") }}
    {% else %} {{ source("rds_prod", "maps") }}
    {% endif %} as m on m.id = pm.map_id and m.db = p.db and m.farm_id = p.farm_id
where p.deleted = 0
