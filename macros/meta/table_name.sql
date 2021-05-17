{% macro table_name() %}
    {{ adapter.dispatch('table_name')() }}
{% endmacro %}


{% macro default__table_name() %}
    '"' || table_schema || '"' || '.' || '"' || table_name || '"'
{% endmacro %}


{% macro bigquery__table_name() %}
    '`' || table_schema || '`' || '.' || '`' || table_name || '`'
{% endmacro %}


{% macro redshift__table_name() %}
    '"' || schemaname || '"' || '.' || '"' || tablename || '"'
{% endmacro %}