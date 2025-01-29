{%- macro clear_deployed_cache_status() %}
{{ honeydew.snowflake_native_app_call('CLEAR_DEPLOYED_CACHE_STATUS', var('honeydew:workspace'), var('honeydew:branch')) }}
{%- endmacro %}
