SHOW ROLES;

USE ROLE job_ads_dlt_role;

USE SCHEMA job_ads.staging;

SHOW TABLES;

SELECT 
    relevance,
    workplace_address__street_address,
    WORKPLACE_ADDRESS__POSTCODE,
    publication_date,
    webpage_url,
    source_type,
    timestamp,
    TO_CHAR(TO_TIMESTAMP(timestamp / 1000), 'YYYY-MM-DD HH24:MI:SS')
        AS readable_timestamp
    FROM staging.jobads_resource LIMIT 5;

SELECT
    scope_of_work__min,
    scope_of_work__max,
    employer__name,
    salary_type__label,
    salary_description,
    duration__label,
    logo_url,
    employer__workplace,
    employer__name,
    employer__url
FROM staging.jobads_resource LIMIT 5;

SELECT
    DISTINCT salary_description AS different_salary_desc
FROM jobads_resource;