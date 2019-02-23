-- List the rooms that are currently unoccupied at the Hilton.  
-- 		Example format)
-- (room #, hotel #) 
--not in booking?
--need room, hotel, booking
--need current time restraint for dateFrom/To


SELECT R.roomNo, R.H_hotelNo,
H.hotelNo, H.hotelName,
B.H_hotelNo, B.dateFrom, B.dateTo, B.R_roomNo
FROM ROOM AS R, BOOKING AS B, HOTEL as H 
WHERE H.hotelNo = R.H_hotelNo AND
R.H_hotelNo = B.H_hotelNo AND
R.roomNo = B.R_roomNo AND
H.hotelName = 'Hilton' AND
NOT EXISTS (SELECT R.roomNo, R.H_hotelNo,
H.hotelNo, H.hotelName,
B.H_hotelNo, B.dateFrom, B.dateTo, B.R_roomNo
FROM ROOM AS R, BOOKING AS B, HOTEL as H 
B.dateFrom <= date('now') AND 
B.dateTo >= date('now') AND
) 

