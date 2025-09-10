with src_auxilliary_attributes as (select * from {{ ref('src_auxilliary_attributes') }})

select
    {{ dbt_utils.generate_surrogate_key(['id']) }} as auxilliary_attributes_id,
    
from src_auxilliary_attributes