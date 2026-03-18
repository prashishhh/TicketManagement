-- Count total customers in the database
SELECT COUNT(*) as "COUNT" FROM "CUSTOMER";

-- Count all movies currently in the system
SELECT COUNT(*) as "COUNT" FROM "MOVIE";

-- Count every ticket record (sold or unpaid)
SELECT COUNT(*) as "COUNT" FROM "TICKET";

-- Payment Distribution (Doughnut Chart)
SELECT PaymentStatus, COUNT(*) as Total 
FROM Ticket 
GROUP BY PaymentStatus;

-- Top 5 Movies by Revenue (Column Chart)
SELECT * FROM (
    SELECT M.MovieName, SUM(T.TicketPrice) as Revenue 
    FROM Movie M 
    JOIN CMTHST H ON M.MovieID = H.MovieID 
    JOIN Ticket T ON H.TicketID = T.TicketID 
    GROUP BY M.MovieName 
    ORDER BY Revenue DESC
) WHERE ROWNUM <= 5; 

-- Top 5 Popular Zones (Pie Chart)
SELECT * FROM (
    SELECT Z.ZoneName, COUNT(T.TicketID) as SoldCount 
    FROM Zone Z 
    JOIN Ticket T ON Z.ZoneID = T.ZoneID 
    GROUP BY Z.ZoneName 
    ORDER BY SoldCount DESC
) WHERE ROWNUM <= 5; 