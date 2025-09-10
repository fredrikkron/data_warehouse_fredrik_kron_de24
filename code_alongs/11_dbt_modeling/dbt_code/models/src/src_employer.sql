with stg_job_ads as (select * from {{ source('job_ads', 'stg_ads') }})

select
    -- employer_id?
    employer__name,
    employer__workplace,
    employer__organization_number,
    workplace_address__street_address,
    workplace_address__region,
    workplace_address__postcode,
    workplace_address__city,
    workplace_address__country
from stg_job_ads