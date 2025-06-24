{{ config(
    post_hook='call transform.proc_unload_s3()'
) }}

    SELECT 
        MAX(METADATA$FILE_LAST_MODIFIED) as latest_modification
    FROM {{ source('landing', 'STG_TABLE') }}
