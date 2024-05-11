{%- macro get_dataset_sql(dataset_name) %}
{{ honeydew.snowflake_native_app_call('GET_SQL_FOR_DYNAMIC_DATASET', var('honeydew:workspace'), var('honeydew:branch'), dataset_name) }}
{%- endmacro %}
