{% macro titlecase(string_col) -%}
    regexp_replace(
        replace({{ string_col }}, '_', ' '),
        '(\w)(\w*)',
        x -> upper(x[1]) || lower(x[2])
    )
{%- endmacro %}
