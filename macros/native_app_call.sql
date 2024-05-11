{%- macro snowflake_native_app_call(call_name, workspace_name, branch, parameter) %}
  {%- set query_sql %}
    select {{var('honeydew:snowflake_native_app_name')}}.API.{{ call_name }}('{{ workspace_name }}', '{{ branch }}', '{{ parameter }}');
  {%- endset %}
{%- set results = run_query(query_sql) %}
{%- if execute %}
{%- set results_list = results.columns[0].values() %}
{%- else %}
{%- set results_list = [] %}
{%- endif %}
{%- for query_value in results_list %}
{{ query_value }}
{%- endfor %}
{%- endmacro %}
