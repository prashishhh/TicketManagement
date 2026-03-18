CREATE TABLE CMTHST 
    ( 
     CustomerID INTEGER  NOT NULL , 
     MovieID    INTEGER  NOT NULL , 
     TheatreID  INTEGER  NOT NULL , 
     HallID     INTEGER  NOT NULL , 
     ShowID     INTEGER  NOT NULL , 
     TicketID   INTEGER  NOT NULL 
    ) 
;

ALTER TABLE CMTHST 
    ADD CONSTRAINT CMTHST_PK PRIMARY KEY ( CustomerID, MovieID, HallID, ShowID, TicketID, TheatreID ) ;

CREATE TABLE Customer 
    ( 
     CustomerID  INTEGER  NOT NULL , 
     FirstName   VARCHAR2 (30) , 
     LastName    VARCHAR2 (30) , 
     Address     VARCHAR2 (100) , 
     PhoneNumber VARCHAR2 (15) 
    ) 
;

ALTER TABLE Customer 
    ADD CONSTRAINT Customer_PK PRIMARY KEY ( CustomerID ) ;

CREATE TABLE CustomerMovieTheatre 
    ( 
     CustomerID INTEGER  NOT NULL , 
     MovieID    INTEGER  NOT NULL , 
     TheatreID  INTEGER  NOT NULL 
    ) 
;

ALTER TABLE CustomerMovieTheatre 
    ADD CONSTRAINT CustomerMovieTheatre_PK PRIMARY KEY ( TheatreID, MovieID, CustomerID ) ;

CREATE TABLE CustomerMovieTheatreHall 
    ( 
     CustomerID INTEGER  NOT NULL , 
     MovieID    INTEGER  NOT NULL , 
     TheatreID  INTEGER  NOT NULL , 
     HallID     INTEGER  NOT NULL 
    ) 
;

ALTER TABLE CustomerMovieTheatreHall 
    ADD CONSTRAINT CustomerMovieTheatreHall_PK PRIMARY KEY ( CustomerID, MovieID, TheatreID, HallID ) ;

CREATE TABLE CustomerMovieTheatreHallShow 
    ( 
     CustomerID INTEGER  NOT NULL , 
     MovieID    INTEGER  NOT NULL , 
     TheatreID  INTEGER  NOT NULL , 
     HallID     INTEGER  NOT NULL , 
     ShowID     INTEGER  NOT NULL 
    ) 
;

ALTER TABLE CustomerMovieTheatreHallShow 
    ADD CONSTRAINT CMTHS_PK PRIMARY KEY ( CustomerID, MovieID, TheatreID, HallID, ShowID ) ;

CREATE TABLE Hall 
    ( 
     HallID       INTEGER  NOT NULL , 
     HallCapacity INTEGER  NOT NULL , 
     TheatreID    INTEGER  NOT NULL 
    ) 
;

ALTER TABLE Hall 
    ADD CONSTRAINT Hall_PK PRIMARY KEY ( HallID ) ;

CREATE TABLE Movie 
    ( 
     MovieID          INTEGER  NOT NULL , 
     MovieName        VARCHAR2 (50) , 
     MovieGenre       VARCHAR2 (30) , 
     MovieDuration    INTEGER , 
     MovieLanguage    VARCHAR2 (20) , 
     MovieReleaseDate DATE 
    ) 
;

ALTER TABLE Movie 
    ADD CONSTRAINT Movie_PK PRIMARY KEY ( MovieID ) ;

CREATE TABLE Movie_Customer 
    ( 
     MovieID    INTEGER  NOT NULL , 
     CustomerID INTEGER  NOT NULL 
    ) 
;

ALTER TABLE Movie_Customer 
    ADD CONSTRAINT Movie_Customer_PK PRIMARY KEY ( MovieID, CustomerID ) ;

CREATE TABLE Show 
    ( 
     ShowID   INTEGER  NOT NULL , 
     ShowTime VARCHAR2 (10) , 
     ShowDate DATE 
    ) 
;

ALTER TABLE Show 
    ADD CONSTRAINT Show_PK PRIMARY KEY ( ShowID ) ;

CREATE TABLE Theatre 
    ( 
     TheatreID   INTEGER  NOT NULL , 
     TheatreName VARCHAR2 (50) , 
     TheatreCity VARCHAR2 (30) 
    ) 
;

ALTER TABLE Theatre 
    ADD CONSTRAINT Theatre_PK PRIMARY KEY ( TheatreID ) ;

CREATE TABLE Ticket 
    ( 
     TicketID      INTEGER  NOT NULL , 
     TicketPrice   INTEGER , 
     PaymentStatus VARCHAR2 (20) , 
     ZoneID        INTEGER  NOT NULL 
    ) 
;

ALTER TABLE Ticket 
    ADD CONSTRAINT Ticket_PK PRIMARY KEY ( TicketID ) ;

CREATE TABLE Zone 
    ( 
     ZoneID   INTEGER  NOT NULL , 
     ZoneName VARCHAR2 (20) , 
     HallID   INTEGER  NOT NULL 
    ) 
;

ALTER TABLE Zone 
    ADD CONSTRAINT Zone_PK PRIMARY KEY ( ZoneID ) ;

ALTER TABLE CMTHST 
    ADD CONSTRAINT CMTHST_CMTHS_FK FOREIGN KEY 
    ( 
     CustomerID,
     MovieID,
     TheatreID,
     HallID,
     ShowID
    ) 
    REFERENCES CustomerMovieTheatreHallShow 
    ( 
     CustomerID,
     MovieID,
     TheatreID,
     HallID,
     ShowID
    ) 
;

ALTER TABLE CMTHST 
    ADD CONSTRAINT CMTHST_Ticket_FK FOREIGN KEY 
    ( 
     TicketID
    ) 
    REFERENCES Ticket 
    ( 
     TicketID
    ) 
;

ALTER TABLE Movie_Customer 
    ADD CONSTRAINT Customer_FK FOREIGN KEY 
    ( 
     CustomerID
    ) 
    REFERENCES Customer 
    ( 
     CustomerID
    ) 
;

ALTER TABLE CustomerMovieTheatreHall 
    ADD CONSTRAINT CustomerMovieTheatre_FK FOREIGN KEY 
    ( 
     TheatreID,
     MovieID,
     CustomerID
    ) 
    REFERENCES CustomerMovieTheatre 
    ( 
     TheatreID,
     MovieID,
     CustomerID
    ) 
;

ALTER TABLE CustomerMovieTheatreHallShow 
    ADD CONSTRAINT CustomerMovieTheatreHall_FK FOREIGN KEY 
    ( 
     CustomerID,
     MovieID,
     TheatreID,
     HallID
    ) 
    REFERENCES CustomerMovieTheatreHall 
    ( 
     CustomerID,
     MovieID,
     TheatreID,
     HallID
    ) 
;

ALTER TABLE CustomerMovieTheatreHall 
    ADD CONSTRAINT Hall_FK FOREIGN KEY 
    ( 
     HallID
    ) 
    REFERENCES Hall 
    ( 
     HallID
    ) 
;

ALTER TABLE CustomerMovieTheatre 
    ADD CONSTRAINT Movie_Customer_FK FOREIGN KEY 
    ( 
     MovieID,
     CustomerID
    ) 
    REFERENCES Movie_Customer 
    ( 
     MovieID,
     CustomerID
    ) 
;

ALTER TABLE Movie_Customer 
    ADD CONSTRAINT Movie_FK FOREIGN KEY 
    ( 
     MovieID
    ) 
    REFERENCES Movie 
    ( 
     MovieID
    ) 
;

ALTER TABLE CustomerMovieTheatreHallShow 
    ADD CONSTRAINT Show_FK FOREIGN KEY 
    ( 
     ShowID
    ) 
    REFERENCES Show 
    ( 
     ShowID
    ) 
;

ALTER TABLE CustomerMovieTheatre 
    ADD CONSTRAINT Theatre_FK FOREIGN KEY 
    ( 
     TheatreID
    ) 
    REFERENCES Theatre 
    ( 
     TheatreID
    ) 
;

ALTER TABLE Hall 
    ADD CONSTRAINT Theatre_FKv1 FOREIGN KEY 
    ( 
     TheatreID
    ) 
    REFERENCES Theatre 
    ( 
     TheatreID
    ) 
;

ALTER TABLE Ticket 
    ADD CONSTRAINT Zone_FK FOREIGN KEY 
    ( 
     ZoneID
    ) 
    REFERENCES Zone 
    ( 
     ZoneID
    ) 
;

ALTER TABLE Zone 
    ADD CONSTRAINT Zone_Hall_FK FOREIGN KEY 
    ( 
     HallID
    ) 
    REFERENCES Hall 
    ( 
     HallID
    ) 
;



