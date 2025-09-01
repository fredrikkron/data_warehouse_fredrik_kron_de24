USE ROLE USERADMIN;

CREATE ROLE IF NOT EXISTS job_ads_dlt_role;

USE ROLE SECURITYADMIN;

GRANT ROLE job_ads_dlt_role TO USER extract_loader_07;
GRANT ROLE job_ads_dlt_role TO USER fkron;

-- grant privileges to role
GRANT USAGE ON WAREHOUSE COMPUTE_WH TO ROLE job_ads_dlt_role;
GRANT USAGE ON DATABASE job_ads TO ROLE job_ads_dlt_role;
GRANT USAGE ON SCHEMA job_ads.staging TO ROLE job_ads_dlt_role;
GRANT CREATE TABLE ON SCHEMA job_ads.staging TO ROLE job_ads_dlt_role;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA job_ads.staging TO ROLE job_ads_dlt_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA job_ads.staging TO ROLE job_ads_dlt_role;

-- check grants
SHOW GRANTS ON SCHEMA job_ads.staging;
SHOW FUTURE GRANTS IN SCHEMA job_ads.staging;
SHOW GRANTS TO ROLE job_ads_dlt_role;
SHOW GRANTS TO USER extract_loader_07;