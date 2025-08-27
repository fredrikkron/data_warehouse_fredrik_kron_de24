 ### You have a simple workload that runs daily in Snowflake. The workload uses 0.5 credits per day. Calculate the total credit usage and cost for a 30-day month.

0.5 credits per day

30 days

Used daily

0.5 x 30 = 15

15 credits 
#

### Your workload varies throughout the month. For the first 10 days, you use 2 credits per day. For the next 10 days, you use 1.5 credits per day, and for the last 10 days, you use 1 credit per day. Calculate the total credit usage and cost for a 30-day month.

2 x 10 = 20

1.5 x 10 = 15

1 x 10 = 10

20 + 15 + 10 = 45

45 credits
# 

 ### You have three different warehouses running workloads simultaneously. Warehouse A is of size XS, Warehouse B is of size S, and Warehouse C is of size M. Warehouse A is used for 10h/day, B is used for 2h/day and C is used for 1h/day. Calculate the total monthly cost assuming each warehouse runs for the full 30-day month.

Warehouse A - XS (1 credit/hour) (10h/day)

Warehouse B - S (2 credits/hour) (2h/day)

Warehouse C - M (4 credits/hour) (1h/day)

30 day period:

A) 1 credit x 10h x 30 days = 300 credits

B) 2 credits x 2h x 30 days = 120 credits

C) 4 credits x 1h x 30 days = 120 credits

300 + 120 + 120 = 540 credits
#

### Your Snowflake warehouse uses auto-scaling. For the first 10 days, it operates on 2 clusters for 10 hours per day. For the next 10 days, it scales up to 3 clusters for 10 hours per day. For the last 10 days, it scales up to 4 clusters for 10 hours per day. Calculate the total monthly budget. Assume the warehouse consumes 1 credit per hour per cluster.

1 credit/h

2 clusters x 10h x 10 days = 200 credits

3 clusters x 10h x 10 days = 300 credits

4 clusters x 10h x 10 days = 400 credits

200 + 300 + 400 = 900

Monthly budget: 900 credits