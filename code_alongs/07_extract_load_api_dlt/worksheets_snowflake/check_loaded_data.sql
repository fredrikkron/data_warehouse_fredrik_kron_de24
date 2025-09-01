USE ROLE job_ads_dlt_role;

USE DATABASE job_ads;

SHOW SCHEMAS;

SHOW TABLES IN SCHEMA staging;

DESC TABLE staging.jobads_resource;

SELECT headline, employer__workplace
FROM staging.jobads_resource;

SELECT * FROM staging.jobads_resource WHERE employer__workplace = 'ATG';