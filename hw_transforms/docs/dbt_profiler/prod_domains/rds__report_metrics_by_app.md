{% docs dbt_profiler_results__prod_domains_rds__report_metrics_by_app  %}
| column_name             | data_type    | row_count | not_null_proportion | distinct_count | is_unique | profiled_at                 |
| ----------------------- | ------------ | --------- | ------------------- | -------------- | --------- | --------------------------- |
| db_name                 | varchar      |    63,713 |            1.000000 |              4 |     False | 2024-03-26 08:05:22.644 UTC |
| user_id                 | bigint       |    63,713 |            1.000000 |           7785 |     False | 2024-03-26 08:05:22.644 UTC |
| farm_id                 | varchar      |    63,713 |            1.000000 |           8583 |     False | 2024-03-26 08:05:22.644 UTC |
| herd_number             | varchar      |    63,713 |            1.000000 |           8583 |     False | 2024-03-26 08:05:22.644 UTC |
| national_herd_id        | varchar      |    63,713 |            0.681603 |           5844 |     False | 2024-03-26 08:05:22.644 UTC |
| county                  | varchar      |    63,713 |            0.821073 |            111 |     False | 2024-03-26 08:05:22.644 UTC |
| plan_type               | varchar      |    63,713 |            1.000000 |             14 |     False | 2024-03-26 08:05:22.644 UTC |
| origin_app_type         | varchar      |    63,713 |            1.000000 |              2 |     False | 2024-03-26 08:05:22.644 UTC |
| farm_option             | varchar      |    63,713 |            0.998132 |              5 |     False | 2024-03-26 08:05:22.644 UTC |
| farm_level              | varchar      |    63,713 |            0.920079 |              3 |     False | 2024-03-26 08:05:22.644 UTC |
| farm_band               | varchar      |    63,713 |            0.999937 |             11 |     False | 2024-03-26 08:05:22.644 UTC |
| report_name             | varchar      |    63,713 |            1.000000 |             72 |     False | 2024-03-26 08:05:22.644 UTC |
| report_run_datetime     | timestamp(6) |    63,713 |            1.000000 |          63140 |     False | 2024-03-26 08:05:22.644 UTC |
| week_no                 | bigint       |    63,713 |            1.000000 |             52 |     False | 2024-03-26 08:05:22.644 UTC |
| month_no                | bigint       |    63,713 |            1.000000 |             12 |     False | 2024-03-26 08:05:22.644 UTC |
| quarter_no              | bigint       |    63,713 |            1.000000 |              4 |     False | 2024-03-26 08:05:22.644 UTC |
| total_weekly_reports    | bigint       |    63,713 |            1.000000 |             37 |     False | 2024-03-26 08:05:22.644 UTC |
| total_monthly_reports   | bigint       |    63,713 |            1.000000 |             50 |     False | 2024-03-26 08:05:22.644 UTC |
| total_quarterly_reports | bigint       |    63,713 |            1.000000 |             68 |     False | 2024-03-26 08:05:22.644 UTC |
{% enddocs %}
