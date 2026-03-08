show tables;
select * from trips;
desc trips;
alter table trips modify pickup_datetime datetime;
desc trips;

# 1.tOATAL NUMBER OF TRIPS
SELECT  count(*) as total_trips from trips;
-- There are 72479 trips accordiing to the data.This shows the overall ride demand on the platform. A high total indicates strong usage, popular service adoption, and good market penetration.

# 2.Toatl revenue generated
select sum(fare_amount) as total_revenue from trips;
-- total_revenue is 823919.Helps measure Uber’s overall financial performance. High revenue indicates strong trip frequency and fare generation.

# 3. Average trip distance
select avg(trip_distance) from trips;
-- average trip distance 0.24212191037638808(24km).Most trips are very short, likely indicating urban city rides or short commutes. It may also suggest the platform is used primarily for intra-city transportation rather than long-distance travel.

# 4.Average Fare Per Trip
desc trips;
select avg(fare_amount) as avg_fare from trips;
-- average fare per trip 11.367692297078941.This gives an idea of the typical revenue per ride. It can help in pricing strategy and understanding the platform’s profitability per trip.

# 5.Trips by month
select month,count(*) as total_trips from trips group by month order by total_trips desc;
-- starting 5 months of the year havemore rides.Mainly may month has the highest ride demand.Peak months indicate seasonal demand trends, useful for planning promotions, driver availability, or surge pricing.

# 6.Trips by hour
select hour,count(*) as total_trips from trips group by hour order by total_trips desc;
-- peak ride hours are during evenings.Helps optimize driver allocation, dynamic pricing, and targeted marketing during high-demand hours.

# 7.Revenue by month
select month,sum(fare_amount) as total_revenue from trips group by month order by  total_revenue desc;
-- may month generates the highest revenue.Indicates that both trip volume and average fare were high in May. Useful for seasonal financial forecasting.

# 8.revenue by  hour 
select hour,sum(fare_amount) as total_revenue from trips group by hour order by  total_revenue desc;
-- evening hours (6pm to 9pm) contribute most to revenue.Shows revenue peaks align with commute or leisure travel patterns. Driver incentives and promotions can be targeted at these hours.

# 9.trips by passenger count
select passenger_count,count(*) as trips_count from trips group by passenger_count order by trips_count desc;
-- Most rides are solo (1 passenger) or group of 5 passengers. Helps in understanding trip patterns and vehicle size demand .

# 10 average fare by passenger count
select passenger_count,avg(fare_amount) as avg_amount from trips group by passenger_count order by passenger_count desc;
-- fare changes depending on number of passengers.i.e as the passenger count increases the fare increases.Suggests the platform charges proportionally for larger groups, helping revenue modeling and dynamic pricing.

# 11.Trip distance categories
select case when trip_distance<2 then 'short trip' when trip_distance between 2 and 5 then 'medium trip' else 'long trip' end as trip_category,count(*) from trips group by trip_category;
-- Short trips dominate (72,322 trips), long trips are rare (157 trips). Confirms the dataset is mostly urban and short-distance travel. Short trips could indicate high driver utilization per hour.

# 12.Average passengers per trip
select avg(passenger_count) as avg_passengers  from trips;
-- 1.6759 Shows that most trips are solo or involve small groups. Useful for vehicle type allocation planning.

# 13.trips_category  by passenger_count
select case when passenger_count=1 then "solo trip" when passenger_count between 2 and 4 then "family trip" else "group_trip" end as trip_category,count(*) from trips group by trip_category;
-- solo trip	50261   ,family trip	15447 and group_trip	6771olo trips: 50,261, Family trips: 15,447, Group trips: 6,771Reinforces that solo trips dominate. This helps in fleet planning and promotional targeting.

# 14.Highest fare trip
select * from trips order by fare_amount desc limit 1;
-- Shows extreme values in fares, often due to very long-distance trips or surge pricing.Useful to detect outliers, fraud, or special premium trips.

#15.Average revenue per day
select day,avg(fare_amount) as average_revenue from trips group by day order by average_revenue desc;
-- Certain days generate higher average revenue. Can help in planning marketing campaigns, discounts, or surge pricing based on day-of-week patterns.

# 16.revenue per km
SELECT 
    fare_amount, 
    trip_distance, 
    (fare_amount / trip_distance) AS revenue_per_km,
    pickup_datetime,
    passenger_count
FROM trips
ORDER BY revenue_per_km DESC
LIMIT 20;  -- top 20 trips by revenue per km
-- Short trips and group rides generate the highest revenue per km due to minimum fares and surge pricing.
-- Long trips or off-peak hours yield lower revenue/km, highlighting opportunities for dynamic pricing and driver allocation.
