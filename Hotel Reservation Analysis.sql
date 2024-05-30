show databases;
use internship;
show tables;
RENAME TABLE hotel_dataset TO hotel;
select * from hotel;
# How many reservations were made?
select count(Booking_ID) as "Number of Reservations" from hotel; 
# Which meal plan is popular?
select type_of_meal_plan,count(type_of_meal_plan) as number from hotel group by type_of_meal_plan order by number ASC ;
# Question 03
select round(avg(avg_price_per_room),3) as "Average Price" from hotel where no_of_children> 0; 
#Question 04
select  SUBSTRING(arrival_date, -4) as year ,count(Booking_ID) as "NO Of Reservations" from hotel
WHERE SUBSTRING(arrival_date, -4) = 2017 
group by year;
# Question 05 
select room_type_reserved,count(room_type_reserved) as number from hotel group by room_type_reserved order by number DESC ;
# Question 06
Select count(Booking_ID)as "Reservations Made" FROM hotel where no_of_weekend_nights >0;  
# Question 07
select max(lead_time) as "Highest Time", min(lead_time) as "Lowest Time" from hotel;
# Question 08
select market_segment_type,count(market_segment_type) as NUM from hotel group by market_segment_type order by NUM DESC; 
# Question 09
Select count(Booking_ID) as "Confirmed Reservations"  from hotel where booking_status like 'Not_Canceled';
# Question 10
select sum(no_of_adults) as number_of_adults, sum(no_of_children) as number_of_child from hotel;
# Question 11
select round(avg(no_of_weekend_nights),3) as " Reservation on Weekend Nights" from hotel where no_of_children > 0;
# Question 12
select month(str_to_date(arrival_date, '%d-%m-%y')) as month , count(Booking_ID) as "Reservations Made" from hotel
group by month(str_to_date(arrival_date, '%d-%m-%y'))  order by month ;
# Questions 13
select room_type_reserved, round(avg(no_of_week_nights + no_of_week_nights),3) as no from hotel group by room_type_reserved;
# Question 14
select room_type_reserved,count(Booking_ID) as "Reservations Made", round(avg(avg_price_per_room),3) as AVG_Price from hotel
where no_of_children > 0 group by room_type_reserved
order by count(Booking_ID) DESC;
# Question 15
select market_segment_type,round(avg(avg_price_per_room),3) as avg_price from hotel group by market_segment_type order by avg_price DESC;