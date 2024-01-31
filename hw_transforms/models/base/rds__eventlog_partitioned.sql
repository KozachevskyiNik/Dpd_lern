select
    ev.db as db_name,
    ev.primary_key,
    {{ cast_timestamp("ev.createdserver") }} as event_created_datetime,
    ev.farm_id,
    ev.user_id,
    ev.hw_ref as tracking_code,
    ev.action,
    ev.description,
    ev.data
from {{ source("rds_prod", "eventlog") }} as ev
