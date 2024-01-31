{% docs dbt_profiler_results__prod_domains_rds__report_metrics_by_app  %}
| column_name             | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                 | varchar      |    54,480 |            1.000000 |              4 |     False | 2024-01-31 13:57:58.263 UTC |
| user_id                 | bigint       |    54,480 |            1.000000 |           7077 |     False | 2024-01-31 13:57:58.263 UTC |
| farm_id                 | varchar      |    54,480 |            1.000000 |           7769 |     False | 2024-01-31 13:57:58.263 UTC |
| herd_number             | varchar      |    54,480 |            1.000000 |           7769 |     False | 2024-01-31 13:57:58.263 UTC |
| national_herd_id        | varchar      |    54,480 |            0.673073 |           5207 |     False | 2024-01-31 13:57:58.263 UTC |
| county                  | varchar      |    54,480 |            0.838656 |            109 |     False | 2024-01-31 13:57:58.263 UTC |
| plan_type               | varchar      |    54,480 |            1.000000 |             14 |     False | 2024-01-31 13:57:58.263 UTC |
| origin_app_type         | varchar      |    54,480 |            1.000000 |              2 |     False | 2024-01-31 13:57:58.263 UTC |
| farm_option             | varchar      |    54,480 |            0.998293 |              5 |     False | 2024-01-31 13:57:58.263 UTC |
| farm_level              | varchar      |    54,480 |            0.925863 |              3 |     False | 2024-01-31 13:57:58.263 UTC |
| farm_band               | varchar      |    54,480 |            0.999504 |             11 |     False | 2024-01-31 13:57:58.263 UTC |
| report_name             | varchar      |    54,480 |            1.000000 |             70 |     False | 2024-01-31 13:57:58.263 UTC |
| report_run_datetime     | timestamp(6) |    54,480 |            1.000000 |          53953 |     False | 2024-01-31 13:57:58.263 UTC |
| week_no                 | bigint       |    54,480 |            1.000000 |             52 |     False | 2024-01-31 13:57:58.263 UTC |
| month_no                | bigint       |    54,480 |            1.000000 |             12 |     False | 2024-01-31 13:57:58.263 UTC |
| quarter_no              | bigint       |    54,480 |            1.000000 |              4 |     False | 2024-01-31 13:57:58.263 UTC |
| total_weekly_reports    | bigint       |    54,480 |            1.000000 |             35 |     False | 2024-01-31 13:57:58.263 UTC |
| total_monthly_reports   | bigint       |    54,480 |            1.000000 |             49 |     False | 2024-01-31 13:57:58.263 UTC |
| total_quarterly_reports | bigint       |    54,480 |            1.000000 |             61 |     False | 2024-01-31 13:57:58.263 UTC |
{% enddocs %}
