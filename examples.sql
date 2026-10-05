-- Run any one of these by clicking on it and pressing Ctrl+Enter (Cmd+Enter on a Mac).

-- GENERAL QUERIES

-- SELECT means get data
-- * means all columns
-- FROM is the table we want data from
-- LIMIT tells SQL how many rows/records we want back
-- ; tells SQL that's where the command ends
SELECT * FROM orders LIMIT 10;

-- just get a few columns back
select order_id, placed_at, delivery_zone, subtotal from orders limit 100;

-- WHERE lets us filter
select * from orders where delivery_zone = 'LUC';

select * from orders where delivery_zone = 'LUC' and distance_miles > 5;

-- ORDER BY sorts the results (desc = biggest first)
select * from orders order by subtotal desc limit 10;


-- AGGREGATION FUNCTIONS

-- COUNT counts the number of rows
select count(*) from orders;
select count(*) as total_orders from orders;

-- SUM adds things up
select sum(subtotal) as total_sales from orders;

-- AVG gives an average
select avg(tip) from orders;


-- GROUP BY runs the aggregation once for each group
select cuisine, count(*)
from restaurants
group by cuisine;

select cuisine, price_level, count(*)
from restaurants
group by cuisine, price_level
order by count(*) desc;

-- HAVING filters the groups after they're counted
select cuisine, count(*) as num_restaurants
from restaurants
group by cuisine
having count(*) > 3;


-- STRINGS
-- text comparisons are case sensitive
select * from zones where zone_code = 'LUC';
select * from zones where zone_code = 'luc';

-- LIKE does wildcard searches. % means "anything here"
select * from restaurants where name like 'S%';
select * from restaurants where name like '%Grill';
select * from restaurants where name like '%Pizza%';


-- CASE WHEN ... END makes a new column by sorting rows into buckets
select order_id, distance_miles,
case
    when distance_miles < 2 then 'short'
    when distance_miles between 2 and 5 then 'medium'
    else 'long'
end as trip_length
from orders
limit 100;
