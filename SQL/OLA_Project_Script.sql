CREATE DATABASE OLA_Company;

USE OLA_Company;

# 1. Retrieve all successful bookings:
SELECT * FROM bookings
WHERE booking_Status = 'Success';

-- 1.1. Retrieve all successful bookings and create a view named Successful_Bookings. 
-- This view will allow me to easily access and see all the successful booking records whenever needed.
CREATE VIEW Successful_Bookings AS	-- Create a Successful_booking View page
SELECT * FROM bookings
WHERE booking_Status = 'Success';

-- How to See Successful Bookings 
SELECT * FROM Successful_Bookings;

# 2. Find the average ride distance for each vehicle type:
SELECT Vehicle_Type, AVG(Ride_Distance)
AS avg_distance FROM bookings
GROUP BY Vehicle_Type;

# 2.2 Find the average ride distance for each vehicle type:
CREATE VIEW Ride_distance_For_Each_Vehicle AS -- Create a Ride_distance_For_Each_Vehicle View page
SELECT Vehicle_Type, AVG(Ride_Distance)
AS avg_distance FROM bookings
GROUP BY Vehicle_Type;

-- How to See ride distance for each vehicle 
SELECT * FROM Ride_distance_For_Each_Vehicle;

# 3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) FROM bookings
WHERE Booking_status = "Canceled by Customer";

# 3.1 Get the total number of cancelled rides by customers:
CREATE VIEW Cancelled_Rides_by_Customers AS -- Create a Cancelled_Rides_by_Customers View page
SELECT COUNT(*) FROM bookings
WHERE Booking_status = "Canceled by Customer";

-- How to See Cancelled Rides by Customers 
SELECT * FROM Cancelled_Rides_by_Customers;

# 4. List the top 5 customers who booked the highest number of rides:
SELECT Customer_ID, COUNT(Booking_ID) AS total_riders
FROM Bookings
GROUP BY Customer_ID
ORDER BY total_riders DESC 
LIMIT 5;

# 4.1 List the top 5 customers who booked the highest number of rides:
CREATE VIEW Top_5_Customers AS -- Create a Top_5_Customers View page
SELECT Customer_ID, COUNT(Booking_ID) AS total_riders
FROM Bookings
GROUP BY Customer_ID
ORDER BY total_riders DESC 
LIMIT 5;

-- How to See Top 5 Customers
SELECT * FROM Top_5_Customers;

# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT COUNT(*) FROM bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

# 5.1. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW Canceled_Rides_by_Driver AS -- Create a Canceled_Rides_by_Driver View page
SELECT COUNT(*) FROM bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

-- How to See Canceled_Rides_by_Driver
SELECT * FROM Canceled_Rides_by_Driver;

# 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(Driver_Ratings) AS Max_rating,
	   MIN(Driver_Ratings) AS Min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

# 6.1. Find the maximum and minimum driver ratings for Prime Sedan bookings:
CREATE VIEW Max_Min_Driver_Ratings AS-- Create a Max_Min_Driver_Ratings View page
SELECT MAX(Driver_Ratings) AS Max_rating,
	   MIN(Driver_Ratings) AS Min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

-- How to See Max_Min_Driver_Ratings
SELECT * FROM Max_Min_Driver_Ratings;

# 7. Retrieve all rides where payment was made using UPI:
SELECT * FROM Bookings
WHERE Payment_Method = 'UPI';

# 7.1. Retrieve all rides where payment was made using UPI:
CREATE VIEW UPI_Payments AS-- Create a UPI_Payments View page
SELECT * FROM Bookings
WHERE Payment_Method = 'UPI';

-- How to See UPI_Payments
SELECT * FROM UPI_Payments;

# 7.2. Total Count all rides where payment was made using UPI:
SELECT COUNT(*) FROM Bookings
WHERE Payment_Method = 'UPI';

# 8. Find the average customer rating per vehicle type:
SELECT Vehicle_Type, AVG(Customer_Rating) AS Avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

# 8.1 Find the average customer rating per vehicle type:
CREATE VIEW Avg_Customer_rating AS-- Create a Avg_Customer_rating View page
SELECT Vehicle_Type, AVG(Customer_Rating) AS Avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

-- How to See Avg_Customer_rating
SELECT * FROM Avg_Customer_rating;

# 9. Calculate the total booking value of rides completed successfully:
SELECT SUM(Booking_Value) AS Total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';

# 9.1 Calculate the total booking value of rides completed successfully:
CREATE VIEW Total_Booking_Value AS-- Create a Total_Booking_Value View page
SELECT SUM(Booking_Value) AS Total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';

-- How to See Total_Booking_Value
SELECT * FROM Total_Booking_Value;

# 10. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM Bookings
WHERE Incomplete_Rides = 'Yes';

# 10.1. List all incomplete rides along with the reason:
CREATE VIEW Incomplete_Rides_Reason AS-- Create a Incomplete_Rides_Reason View page
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM Bookings
WHERE Incomplete_Rides = 'Yes';

-- How to See Incomplete_Rides_Reason
SELECT * FROM Incomplete_Rides_Reason;

-- Fetch all Bookings Data
SELECT * FROM bookings;







