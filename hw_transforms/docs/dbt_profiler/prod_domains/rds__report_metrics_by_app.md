{% docs dbt_profiler_results__prod_domains_rds__report_metrics_by_app  %}
| column_name             | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                 | varchar      |    57,352 |            1.000000 |              4 |     False | 2024-02-15 16:34:38.491 UTC |
| user_id                 | bigint       |    57,352 |            1.000000 |           7310 |     False | 2024-02-15 16:34:38.491 UTC |
| farm_id                 | varchar      |    57,352 |            1.000000 |           8032 |     False | 2024-02-15 16:34:38.491 UTC |
| herd_number             | varchar      |    57,352 |            1.000000 |           8032 |     False | 2024-02-15 16:34:38.491 UTC |
| national_herd_id        | varchar      |    57,352 |            0.676454 |           5410 |     False | 2024-02-15 16:34:38.491 UTC |
| county                  | varchar      |    57,352 |            0.833240 |            110 |     False | 2024-02-15 16:34:38.491 UTC |
| plan_type               | varchar      |    57,352 |            1.000000 |             14 |     False | 2024-02-15 16:34:38.491 UTC |
| origin_app_type         | varchar      |    57,352 |            1.000000 |              2 |     False | 2024-02-15 16:34:38.491 UTC |
| farm_option             | varchar      |    57,352 |            0.998256 |              5 |     False | 2024-02-15 16:34:38.491 UTC |
| farm_level              | varchar      |    57,352 |            0.925024 |              3 |     False | 2024-02-15 16:34:38.491 UTC |
| farm_band               | varchar      |    57,352 |            0.999512 |             11 |     False | 2024-02-15 16:34:38.491 UTC |
| report_name             | varchar      |    57,352 |            1.000000 |             71 |     False | 2024-02-15 16:34:38.491 UTC |
| report_run_datetime     | timestamp(6) |    57,352 |            1.000000 |          56807 |     False | 2024-02-15 16:34:38.491 UTC |
| week_no                 | bigint       |    57,352 |            1.000000 |             52 |     False | 2024-02-15 16:34:38.491 UTC |
| month_no                | bigint       |    57,352 |            1.000000 |             12 |     False | 2024-02-15 16:34:38.491 UTC |
| quarter_no              | bigint       |    57,352 |            1.000000 |              4 |     False | 2024-02-15 16:34:38.491 UTC |
| total_weekly_reports    | bigint       |    57,352 |            1.000000 |             36 |     False | 2024-02-15 16:34:38.491 UTC |
| total_monthly_reports   | bigint       |    57,352 |            1.000000 |             47 |     False | 2024-02-15 16:34:38.491 UTC |
| total_quarterly_reports | bigint       |    57,352 |            1.000000 |             62 |     False | 2024-02-15 16:34:38.491 UTC |
{% enddocs %}
