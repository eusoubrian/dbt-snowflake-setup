{% macro stg_table() %}
{% set query -%}

CREATE OR REPLACE TABLE landing.stg_table(
    id int,
    METADATA$FILENAME varchar,
    METADATA$FILE_ROW_NUMBER varchar,
    METADATA$FILE_LAST_MODIFIED timestamp
);
{%- endset %}
{% do run_query(query) %}
{% endmacro %}