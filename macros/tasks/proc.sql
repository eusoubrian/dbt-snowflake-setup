{% macro proc_unload_s3() %}
{% set query -%}


CREATE OR REPLACE PROCEDURE transform.proc_group_unload_s3()
RETURNS STRING
LANGUAGE PYTHON
RUNTIME_VERSION = '3.12'
HANDLER = 'main'
PACKAGES = ('snowflake-snowpark-python')
AS
$$
from snowflake.snowpark import Session
from datetime import datetime

def main(session: Session) -> str:
    export_date = datetime.now().strftime('%Y%m%d')

    df = session.table("TRF_TABLE")

    df_collected = df.collect()
$$;


{%- endset %}
{% do run_query(query) %}
{% endmacro %}