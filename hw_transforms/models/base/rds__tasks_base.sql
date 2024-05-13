select distinct
    -- general task cols
    ta.id as id,
    t.country as country,
    t.db as db_name,
    t.id as task_id,
    t.type_id as task_type_id,
    t.task_type as task_type,
    t.status_id as status_id,
    t.animaltypeid as species,
    t.farm_id as farm_id,
    ta.animal_id as animal_id,
    {{ cast_timestamp("t.duedate ") }} as record_date,
    t.displaydescription as task_name,
    t.cost as task_cost,
    t.belongs_to_app as record_belongs_to_app,
    {{ cast_timestamp("t.created") }} as record_created_datetime,
    t.source as source,
    t.supplier_id as operator_id,
    -- weight task cols
    t.weight as weight_on_date,
    t.weightgain as lifetime_adg,
    -- remedy  related cols
    t.sickness_id as sickness_id,
    t.remedy_id as remedy_id,
    t.batchnumber as batch_number,
    t.vetcallout as vet_call_out_flag,
    t.doseamount as dose_amount_val,
    t.dosetype as dose_unit,
    t.milkwithdrawalperiod as milk_withdrawal_days,
    t.meatwithdrawalperiod as meat_withdrawal_days,
    t.performedby_id as performed_uid,
    t.prescribedby_id as prescribed_uid,
    {{ cast_timestamp("t.remedyexpirydate") }} as remedy_expiry_date,
    t.purchasedamount as remedy_purchased_amount,
    t.remedyqtyused as rem_qty_used,
    t.drugqtyreturned as rem_qty_returned,
    t.remedyqtyleft as rem_qty_left,
    t.treatmentcourse as treatment_course,
    -- fertility related cols
    {{ cast_timestamp("t.scandate") }} as scan_date,
    {{ cast_timestamp("t.expectedcalvingdate") }} as expected_calving_date,
    t.stockbull as stock_bull_id,
    t.aisire as ai_sire_name,
    t.dayspregnant as days_pregnant,
    t.result as record_result,
    t.dayswithbull as days_with_bull,
    t.heatreminderfor as heat_reminder_freq,
    t.remindercycles as heat_reminder_cycle,
    t.running_with_bull as run_with_bull_flag,
    {{ cast_timestamp("t.date_bull_leaves") }} as bull_leaves_date,
    -- movement related cols
    t.movetoherdnumber as moved_to_herd,
    t.movecertnumber as move_cert_num,
    t.movecerttype as move_cert_type,
    t.moveseparatecertperanimal as cert_per_animal_flag,
    t.movefromfeedlot as moved_from_feedlot_flag,
    t.movetofeedlot as moved_to_feedlot_flag,
    {{ cast_timestamp("t.moveapplysuccessdate") }} as move_apply_success_datetime
{% if target.name == "beta" %} from {{ source("rds_beta", "beta_task") }}
{% else %} from {{ source("rds_prod", "task") }}
{% endif %} as t
left join
    {% if target.name == "beta" %} {{ source("rds_beta", "beta_task_animal") }}
    {% else %} {{ source("rds_prod", "task_animal") }}
    {% endif %} as ta on ta.task_id = t.id and ta.db = t.db
where t.deleted = 0 and ta.deleted = 0
