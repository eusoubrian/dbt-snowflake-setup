{% macro stage() %}
{% set query -%}
 
create or replace stage landing.stage
storage_integration = {{env_var('DBT_STORAGE_INT')}}
url =  {{env_var('DBT_S3_BUCKET')}}
file_format = (type =csv);

{%- endset %}
{% do run_query(query) %}
{% endmacro %}