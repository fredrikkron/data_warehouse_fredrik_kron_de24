USE ROLE USERADMIN;

CREATE ROLE IF NOT EXISTS marketing_dlt_role;

CREATE USER IF NOT EXISTS extract_loader_exercise
    PASSWORD = '' -- fill in password
    DEFAULT_WAREHOUSE = marketing_wh;

SHOW ROLES;

USE ROLE SECURITYADMIN;

GRANT ROLE marketing_dlt_role TO USER extract_loader_exercise;

GRANT USAGE ON WAREHOUSE marketing_wh TO ROLE marketing_dlt_role;
GRANT USAGE ON DATABASE ifood_db TO ROLE marketing_dlt_role;
GRANT USAGE ON SCHEMA ifood_db.staging TO ROLE marketing_dlt_role;

SHOW GRANTS TO USER extract_loader_exercise;
SHOW GRANTS TO ROLE marketing_dlt_role;

GRANT CREATE TABLE ON SCHEMA ifood_db.staging TO ROLE marketing_dlt_role;
GRANT INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA ifood_db.staging TO ROLE marketing_dlt_role;
GRANT INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA ifood_db.staging TO ROLE marketing_dlt_role;
GRANT SELECT ON ALL TABLES IN SCHEMA ifood_db.staging TO ROLE marketing_dlt_role;
GRANT SELECT ON FUTURE TABLES IN DATABASE ifood_db TO ROLE marketing_dlt_role;

GRANT USAGE ON WAREHOUSE marketing_wh TO ROLE marketing_dlt_role;
GRANT USAGE ON DATABASE ifood_db TO ROLE movies_dlt_role;
GRANT USAGE ON SCHEMA ifood_db.staging TO ROLE marketing_dlt_role;

GRANT ROLE marketing_dlt_role TO USER fkron;

SELECT * FROM staging.i_food LIMIT 10;