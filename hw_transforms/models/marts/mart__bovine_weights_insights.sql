select *
from {{ ref("rds__bovine_weights") }} as bw
window
    group_by_date as (partition by bw.db_name, bw.farm_id, bw.weigh_date),
    group_by_group_name as (partition by bw.db_name, bw.farm_id, bw.group_name)
