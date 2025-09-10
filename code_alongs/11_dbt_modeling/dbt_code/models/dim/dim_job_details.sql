with src_job_details as (select * from {{ ref('src_job_details') }})

select
    {{ dbt_utils.generate_surrogate_key(['id']) }} as job_details_id,
    
from src_job_details