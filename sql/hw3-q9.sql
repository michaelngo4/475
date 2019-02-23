-- Count the number of current bookings at each hotel and display with the hotel name and city. List only the hotels with at least 5 current bookings. 
--  		Example format)
-- (# of bookings, hotel name, city)
--need hotel and booking

SELECT COUNT(BOOKING), H.hotelName, H.city, H.hotelno
FROM HOTEL AS H, BOOKING
WHERE H_hotelno  = H.hotelno AND 
    COUNT(BOOKING) > 5
GROUP BY HOTEL