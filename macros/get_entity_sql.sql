{%- macro get_entity_sql(entity_name) %}
{{ honeydew.snowflake_native_app_call('GET_SQL_FOR_ENTITY', var('honeydew:workspace'), var('honeydew:branch'), entity_name) }}
{%- endmacro %}
