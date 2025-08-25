## What are the main components of Snowflake's architecture?

Snowflake has three main layers:

**Storage Layer** - Stores structured and semi-structured data in compressed, column format.

**Compute Layer (Virtual Warehouses)** - Provides processing power to run queries, load data and perform transformations.

**Cloud Service Layer** - Coordinates metadata, query optimization, security, authentication and infrastructure management.


## Explain the role of the storage layer in Snowflake

- All the data is stored in centralized cloud storage. (Azure Blob, Google Cloud, Amazon S3)
- Data is automatically compressed, encrypted and organized in column format.
- It provides separation of storage and compute meaning multiple compute clusters can query the same data without duplicating it.
- Handles scalability automatically and transparently.


## What is the purpose of the compute layer in Snowflake?

- The compute layer consists of virtual warehouses.
- Each warehouse is an independent compute cluster that can be resized, started or stopped on demand.
- Responsible for executing queries, performing transformations and data loading.
- Multiple warehouses can operate on same data simultaneously without resource contention.


## How does the cloud services layer enhance the functionality of Snowflake?

It acts as the "brain" of Snowflake and handles:
- Metadata management (schemas, tables, permissions)
- Query parsing and optimization
- Security and access control
- Transaction management and concurrency control
- Infrastructure orchestration (automatically handling elasticity and scaling) 


## What is a virtual warehouse in Snowflake, and how does it differ from a traditional data warehouse?

A virtual warehouse is a cluster of compute resources used for executing queries.

Unlike traditional on-premise warehouses:
- Virtual warehouses can be started/stopped at anytime
- They can scale up (increase size) or scale out (add clusters).
- They don't store data - only process it.
- Multiple warehouses can access the same storage at the same time.

## When are the cases you would want to scale up versus scaling out in terms of virtual warehouses and compute resources?

Scaling Up is good when you need more power for single complex/large queries. (heavy joins, aggregations or transformations)

Scaling Out is good when you need to handle many concurrent queries or workloads. (lots of users running dashboards at once)
It prevents queueing and improves concurrency.


## How does Snowflake's pricing model differ from traditional on-premise data warehousing solutions?

In traditional on-premise you pay for hardware, maintenance, licenses even when resources are idle.

In Snowflake you pay separately for storage and compute.
- Storage is billed monthly based on TB stored.
- Compute is a pay per second (minimum 1 min) only when virtual warehouses are running.
- No upfront hardware costs, elastic scaling and automatic suspending of idle warehouses saves costs.


## What is the difference between pay-as-you-go and upfront storage, and when you should you choose one over the other?

Pay-as-you-go storage is billed monthly based on actual usage and best for dynamic or unpredictable workloads where storage may fluctuate.

Upfront storage is best for large, stable workloads where storage needs are predictable (Commiting to a certain storage volume at a discount)


## Explain the concept of Time Travel and Fail-safe in Snowflake and its use cases

Time Travel:
- Access historical data (dropped tables, updated records or past states of data)
- Default retention of 1 day going up to 90 days based on edition.
- Use cases: undo accidental deletes, auditing changes, rerun queries on past snapshots.

Fail-safe:
- 7 day period after time travel expires.
Snowflake can recover data in emergencies (disasters, corruption)
- Managed by Snowflake support, customers can't directly query Fail-safe.
Use case: a last resort data recovery.

