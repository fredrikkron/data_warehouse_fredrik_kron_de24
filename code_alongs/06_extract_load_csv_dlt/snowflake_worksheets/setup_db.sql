SHOW DATABASES;


-- switch to an appropriate role

USE ROLE sysadmin;


-- setup database for dlt csv data ingestion

CREATE DATABASE IF NOT EXISTS MOVIES;

-- set up staging schema

CREATE SCHEMA IF NOT EXISTS staging;
-- alternative use 'fully qualified object name' CREATE SCHEMA movies.staging

