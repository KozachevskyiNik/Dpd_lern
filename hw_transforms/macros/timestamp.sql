{% macro cast_timestamp(timestamp_col) -%}
  {%- set config = model.get('config', {}) -%}
  {%- set table_type = config.get('table_type', 'glue') -%}
  {%- if table_type == 'iceberg' -%}
    cast({{ timestamp_col }} as timestamp(6))
  {%- else -%}
    cast({{ timestamp_col }} as timestamp)
  {%- endif -%}
{%- endmacro %}