  ## Why is the principal of least privilege important in a company?

The principle of least privilege ensures that employees, applications and systems only have the minimum access rights necessary to perform their job functions.
- Reduces security risks.
- Minimizes accidental misuse of data and resources.
- Ensures compliance with data protection and privacy regulations.
Improves operational stability by preventing unauthorized changes.

  ## Explain the role of dlt in managing data pipelines.
DLT is a framework for building reliable, maintainable and testable data pipelines.
- Manages pipeline orchestration, dependencies and data quality checks.
- Provides declarative where you define what you want, not how.
- Handles scalability and fault tolerance automatically.
- Tracks pipeline lineage for easier debugging and auditing.

  ## What is a data connector and why is it important in data integration?
It is a tool or component that allows systems, applications or databases to connect and exchange data seamlessly.
- Enables integration of data from multiple sources (database, API...).
- Reduces manual effort in extracting and loading data.
- Ensures data consistency and real-time synchronization.
- Facilitates building unified analytics and reporting environments.

  ## What are the three different write dispositions in dlt?
Delta Live Tables - The write disposition defines how data should be written to the target table.
- append - Adds new data without altering existing records.
- complete - Replaces the entire target table with the new data.
- merge - Inserts new rows, updates matching rows, optional deletes.

  ## What is ELT and how does it differ from ETL?
ETL (Extract → Transform → Load): Data is extracted, transformed (cleaned, aggregated), and then loaded into the target system (like a data warehouse).

ELT (Extract → Load → Transform): Data is extracted, loaded into the target system first, and then transformed using the compute power of the target system (Snowflake, Big Query...).

In ELT the transformations are performed after loading into the warehouse, leveraging its scalability and reduces the complexity in the pipeline.

  ## Discuss the advantages of performing data transformations after loading the data.
- Takes advantage of cloud data warehouse compute power (faster and scalable).
- Raw data is preserved for auditing, reprocessing or future use.
- Simplifies pipeline design(less transformation logic outside the warehouse).
- Enables incremental transformations and on-demand analytics.
Reduces dependendy on external ETL tools.

  ## What is the purpose of roles in Snowflake?
They are used to manage access control by grouping a set of privileges.
- Define what operations a user can perform and on which objects.
- Simplify administration by assigning privileges to roles rather than directly to users.
- Support role hierarchy (roles can inherit privileges from other roles).
- Enforce the principle of least privilege.

  ## Explain the difference between USAGE and OWNERSHIP privileges.
Usage:
- Grants the ability to use an object (database, schema or warehouse).
- Does not allow modifying or viewing its contents directly, just recognition and access.
- Usage on a schema allows referencing objects in it.

Ownership:
- The highest level of control over an object.
- Allows transferring ownership, modifying, grant/revoke privileges and dropping the object.
- An object can only have one owner at a time.

  ## What information is required to create a user in Snowflake?
When creating a new user in Snowflake, the following information is typically required:

- User name (unique identifier).
- Password (or authentication method, e.g., SSO, key-pair).
- Default role (assigned role on login).
- Default warehouse (optional).
- Default namespace (database + schema) (optional).
- Contact info (email, display name, etc., optional).
- Must-change-password flag (for security on first login).