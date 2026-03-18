-- UserTicket Complex Form Query
SELECT 
    T.TicketID, 
    T.TicketPrice, 
    T.PaymentStatus, 
    Z.ZoneName, 
    S.ShowDate
FROM CMTHST C
JOIN Ticket T ON C.TicketID = T.TicketID          
JOIN Zone Z ON T.ZoneID = Z.ZoneID                 
JOIN Show S ON C.ShowID = S.ShowID                 
WHERE C.CustomerID = :CustomerID                  
  AND S.ShowDate >= ADD_MONTHS(SYSDATE, -6)        
ORDER BY S.ShowDate DESC; 


-- Create a comprehensive schedule report for a specific Theatre
SELECT DISTINCT
    T."THEATRENAME",
    T."THEATRECITY",
    H."HALLID",
    M."MOVIENAME",
    M."MOVIEGENRE",
    M."MOVIELANGUAGE",
    S."SHOWDATE",
    S."SHOWTIME"
FROM "CMTHST" C
JOIN "THEATRE" T ON C."THEATREID" = T."THEATREID"  
JOIN "HALL" H ON C."HALLID" = H."HALLID"            
JOIN "MOVIE" M ON C."MOVIEID" = M."MOVIEID"        
JOIN "SHOW" S ON C."SHOWID" = S."SHOWID"             
WHERE C."THEATREID" = :THEATREID                    
ORDER BY
    T."THEATRENAME",
    H."HALLID",
    S."SHOWDATE",
    S."SHOWTIME";                                   


-- MovieOccupancyPerformer Complex Form Query
SELECT * FROM (
    SELECT
        TH."THEATRENAME",
        TH."THEATRECITY",
        C."HALLID",
        H."HALLCAPACITY",
        COUNT(T."TICKETID") AS PAID_TICKETS,       
        ROUND((COUNT(T."TICKETID") * 100) / H."HALLCAPACITY", 2) AS OCCUPANCY_PERCENTAGE
    FROM "CMTHST" C
    JOIN "TICKET" T ON C."TICKETID" = T."TICKETID"   
    JOIN "HALL" H ON C."HALLID" = H."HALLID"         
    JOIN "THEATRE" TH ON C."THEATREID" = TH."THEATREID" 
    WHERE C."MOVIEID" = :MOVIEID                     
      AND T."PAYMENTSTATUS" = 'Paid'                
    GROUP BY
        TH."THEATRENAME", TH."THEATRECITY", C."HALLID", H."HALLCAPACITY"
    ORDER BY OCCUPANCY_PERCENTAGE DESC               
)
WHERE ROWNUM <= 3;                                   
