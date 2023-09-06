select
    -- general task cols
    ta.task_animal_id as task_animal_id,
    t.country as country,
    t.db_name as db_name,
    t.task_id as task_id,
    t.type_id as task_type_id,
    t.task_type as task_type,
    t.status_id as status_id,
    t.animal_type_id as species,
    t.farm_id as farm_id,
    ta.animal_id as animal_id,
    {{ cast_timestamp("t.task_date ") }} as record_date,
    t.cost as task_cost,
    t.belongs_to_app as record_belongs_to_app,
    {{ cast_timestamp("t.created_date_time") }} as record_created_datetime,
    t.source as source,
    t.supplier_id as operator_id,
    -- weight task cols
    t.weight as weight_on_date,
    t.weight_gain as lifetime_adg,
    -- remedy  related cols
    t.sickness_id as sickness_id,
    t.remedy_id as remedy_id,
    t.batch_number as batch_number,
    t.vet_call_out as vet_call_out_flag,
    t.dose_amount as dose_amount_val,
    t.dose_type as dose_unit,
    t.milk_withdrawal_period as milk_withdrawal_days,
    t.meat_withdrawal_period as meat_withdrawal_days,
    t.performed_by_id as performed_uid,
    t.prescribed_by_id as prescribed_uid,
    {{ cast_timestamp("t.remedy_expiry_date") }} as remedy_expiry_date,
    t.purchased_amount as remedy_purchased_amount,
    t.remedy_qty_used as rem_qty_used,
    t.remedy_qty_returned as rem_qty_returned,
    t.remedy_qty_left as rem_qty_left,
    t.treatment_course as treatment_course,
    -- fertility related cols
    {{ cast_timestamp("t.scan_date") }} as scan_date,
    {{ cast_timestamp("t.expected_calving_date") }} as expected_calving_date,
    t.stock_bull as stock_bull_id,
    t.ai_sire as ai_sire_name,
    t.days_pregnant as days_pregnant,
    t.result as record_result,
    t.days_with_bull as days_with_bull,
    t.heat_reminder_for as heat_reminder_freq,
    t.reminder_cycles as heat_reminder_cycle,
    t.running_with_bull as run_with_bull_flag,
    {{ cast_timestamp("t.bull_leaves_date") }} as bull_leaves_date,
    -- movement related cols
    t.move_to_herd_no as moved_to_herd,
    t.move_cert_no as move_cert_num,
    t.mover_cert_type as move_cert_type,
    t.move_separate_cert_per_animal as cert_per_animal_flag,
    t.move_to_feedlot as moved_from_feedlot_flag,
    t.move_to_feed_lot as moved_to_feedlot_flag,
    {{ cast_timestamp("t.move_apply_success_date_time") }}
    as move_apply_success_datetime
{% if target.name == "beta" %} from {{ source("rds_beta", "beta__task_animals") }}
{% else %} from {{ source("rds_prod", "rds__task_animals") }}
{% endif %} as ta
inner join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta__tasks") }}
    {% else %} {{ source("rds_prod", "rds__tasks") }}
    {% endif %} as t on ta.task_id = t.task_id and ta.db_name = t.db_name
