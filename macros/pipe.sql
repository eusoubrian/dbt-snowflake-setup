{% macro pipe() %}
{% set query -%}

create or replace pipe landing.pipe auto_ingest=true AS
copy into landing.stg_table FROM (
  SELECT
    $1,
    $2,
    $3,
    METADATA$FILENAME,
    METADATA$FILE_ROW_NUMBER varchar,
    METADATA$FILE_LAST_MODIFIED timestamp
  FROM
    @landing.stage/Input/
)

file_format=(TYPE=csv, FIELD_OPTIONALLY_ENCLOSED_BY='"',FIELD_DELIMITER = ',',SKIP_HEADER=1,EMPTY_FIELD_AS_NULL=false);

{%- endset %}
{% do run_query(query) %}
{% endmacro %}