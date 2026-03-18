-- Customer Table Data Population
INSERT INTO Customer VALUES (1,'Ram','Shrestha','Kathmandu','9811111111');
INSERT INTO Customer VALUES (2,'Sita','Tamang','Pokhara','9822222222');
INSERT INTO Customer VALUES (3,'Hari','Gurung','Lalitpur','9833333333');
INSERT INTO Customer VALUES (4,'Ramesh','Thapa','Bhaktapur','9844444444');
INSERT INTO Customer VALUES (5,'Sunita','Rai','Biratnagar','9855555555');
INSERT INTO Customer VALUES (7,'Nisha','Lama','Chitwan','9862222222');
INSERT INTO Customer VALUES (8,'Bikash','Yadav','Janakpur','9863333333');
INSERT INTO Customer VALUES (9,'Pooja','Khadka','Butwal','9864444444');
INSERT INTO Customer VALUES (10,'Suman','Magar','Hetauda','9865555555');
INSERT INTO Customer VALUES (11,'Sumana','Magar','Hetauda','9865775555');

select * from Customer;

commit;

-- Movie Table Data Population
INSERT INTO Movie VALUES (101,'Kabaddi','Drama',135,'Nepali',TO_DATE('2014-04-25','YYYY-MM-DD'));
INSERT INTO Movie VALUES (102,'Jatra','Comedy',120,'Nepali',TO_DATE('2016-09-23','YYYY-MM-DD'));
INSERT INTO Movie VALUES (103,'Chhakka Panja','Comedy',138,'Nepali',TO_DATE('2016-09-09','YYYY-MM-DD'));
INSERT INTO Movie VALUES (104,'Loot','Crime',125,'Nepali',TO_DATE('2012-01-13','YYYY-MM-DD'));
INSERT INTO Movie VALUES (105,'Prem Geet','Romance',140,'Nepali',TO_DATE('2016-02-12','YYYY-MM-DD'));
INSERT INTO Movie VALUES (108,'Darpan Chhaya','Romance',140,'Nepali',TO_DATE('2001-04-20','YYYY-MM-DD'));
INSERT INTO Movie VALUES (109,'Hostel','Youth Drama',128,'Nepali',TO_DATE('2013-09-13','YYYY-MM-DD'));
INSERT INTO Movie VALUES (110,'A Mero Hajur 2','Romance',137,'Nepali',TO_DATE('2017-08-25','YYYY-MM-DD'));
INSERT INTO Movie VALUES (111,'Avengers: Endgame','Action/Sci-Fi',181,'English',TO_DATE('2019-04-26','YYYY-MM-DD'));
INSERT INTO Movie VALUES (112,'Dangal','Sports/Drama',161,'Hindi',TO_DATE('2016-12-23','YYYY-MM-DD'));

select * from Movie;

commit;

INSERT INTO Theatre VALUES (201,'QFX Civil Mall','Kathmandu');
INSERT INTO Theatre VALUES (202,'Big Movies','Pokhara');
INSERT INTO Theatre VALUES (203,'FCube Cinemas','Lalitpur');
INSERT INTO Theatre VALUES (204,'QFX Chhaya Center','Kathmandu');
INSERT INTO Theatre VALUES (205,'QFX Bhatbhateni','Kathmandu');
INSERT INTO Theatre VALUES (206,'One Cinemas','Biratnagar');
INSERT INTO Theatre VALUES (207,'Midtown Movies','Butwal');
INSERT INTO Theatre VALUES (208,'Metro Cinema','Chitwan');
INSERT INTO Theatre VALUES (209,'Skyline Theatre','Janakpur');
INSERT INTO Theatre VALUES (210,'Central Screens','Hetauda');

select * from Theatre;

commit;

-- Hall Table Data Population
INSERT INTO Hall VALUES (301,200,201);
INSERT INTO Hall VALUES (302,180,202);
INSERT INTO Hall VALUES (303,150,203);
INSERT INTO Hall VALUES (304,120,204);
INSERT INTO Hall VALUES (305,100,205);
INSERT INTO Hall VALUES (307,220,206);
INSERT INTO Hall VALUES (308,160,207);
INSERT INTO Hall VALUES (309,140,208);
INSERT INTO Hall VALUES (311,190,209);
INSERT INTO Hall VALUES (312,130,210);

select * from Hall;

commit;

-- Show Table Data Population
INSERT INTO Show VALUES (401,'10:00 AM',TO_DATE('2026-03-20','YYYY-MM-DD'));
INSERT INTO Show VALUES (402,'01:00 PM',TO_DATE('2026-03-20','YYYY-MM-DD'));
INSERT INTO Show VALUES (403,'04:00 PM',TO_DATE('2026-03-21','YYYY-MM-DD'));
INSERT INTO Show VALUES (404,'07:00 PM',TO_DATE('2026-03-21','YYYY-MM-DD'));
INSERT INTO Show VALUES (405,'09:30 PM',TO_DATE('2026-03-22','YYYY-MM-DD'));
INSERT INTO Show VALUES (407,'11:00 AM',TO_DATE('2026-03-23','YYYY-MM-DD'));
INSERT INTO Show VALUES (408,'02:30 PM',TO_DATE('2026-03-23','YYYY-MM-DD'));
INSERT INTO Show VALUES (409,'05:15 PM',TO_DATE('2026-03-24','YYYY-MM-DD'));
INSERT INTO Show VALUES (410,'08:00 PM',TO_DATE('2026-03-24','YYYY-MM-DD'));
INSERT INTO Show VALUES (411,'09:45 PM',TO_DATE('2026-03-25','YYYY-MM-DD')); 

select * from Show;

commit;

-- Zone Table Data Population
INSERT INTO Zone VALUES (501,'Silver',301);
INSERT INTO Zone VALUES (502,'Gold',302);
INSERT INTO Zone VALUES (503,'Platinum',303);
INSERT INTO Zone VALUES (504,'VIP',304);
INSERT INTO Zone VALUES (505,'Balcony',305);
INSERT INTO Zone VALUES (506,'Silver Plus',306);
INSERT INTO Zone VALUES (507,'Gold Plus',307);
INSERT INTO Zone VALUES (508,'Platinum Plus',308);
INSERT INTO Zone VALUES (509,'Executive',309);
INSERT INTO Zone VALUES (510,'Luxury',310);

Select * from Zone;

commit;

-- Ticket Table Data Population
INSERT INTO Ticket VALUES (601,400,'Paid',501);
INSERT INTO Ticket VALUES (602,450,'Paid',501);
INSERT INTO Ticket VALUES (603,500,'Paid',502);
INSERT INTO Ticket VALUES (604,550,'Paid',502);
INSERT INTO Ticket VALUES (605,600,'Paid',503);
INSERT INTO Ticket VALUES (606,650,'Pending',503);
INSERT INTO Ticket VALUES (607,700,'Paid',504);
INSERT INTO Ticket VALUES (608,750,'Paid',504);
INSERT INTO Ticket VALUES (609,800,'Pending',505);
INSERT INTO Ticket VALUES (610,850,'Paid',505);
INSERT INTO Ticket VALUES (611,420,'Paid',506);
INSERT INTO Ticket VALUES (612,520,'Paid',507);
INSERT INTO Ticket VALUES (613,570,'Pending',507);
INSERT INTO Ticket VALUES (614,620,'Paid',508);
INSERT INTO Ticket VALUES (615,670,'Paid',508);
INSERT INTO Ticket VALUES (616,720,'Pending',509);
INSERT INTO Ticket VALUES (617,770,'Paid',509);
INSERT INTO Ticket VALUES (618,820,'Paid',510);
INSERT INTO Ticket VALUES (619,870,'Pending',510);

Select * from Ticket;

commit;

-- Movie_Customer Table Data Population
INSERT INTO Movie_Customer VALUES (101,1);
INSERT INTO Movie_Customer VALUES (102,2);
INSERT INTO Movie_Customer VALUES (103,3);
INSERT INTO Movie_Customer VALUES (104,4);
INSERT INTO Movie_Customer VALUES (105,5);
INSERT INTO Movie_Customer VALUES (106,6);
INSERT INTO Movie_Customer VALUES (107,7);
INSERT INTO Movie_Customer VALUES (108,8);
INSERT INTO Movie_Customer VALUES (109,9);
INSERT INTO Movie_Customer VALUES (110,10);

Select * from Movie_Customer;

commit;

-- CustomerMovieTheatre Table Data Population
INSERT INTO CustomerMovieTheatre VALUES (1,101,201);
INSERT INTO CustomerMovieTheatre VALUES (2,102,202);
INSERT INTO CustomerMovieTheatre VALUES (3,103,203);
INSERT INTO CustomerMovieTheatre VALUES (4,104,204);
INSERT INTO CustomerMovieTheatre VALUES (5,105,205);
INSERT INTO CustomerMovieTheatre VALUES (6,106,206);
INSERT INTO CustomerMovieTheatre VALUES (7,107,207);
INSERT INTO CustomerMovieTheatre VALUES (8,108,208);
INSERT INTO CustomerMovieTheatre VALUES (9,109,209);
INSERT INTO CustomerMovieTheatre VALUES (10,110,210);

Select * from CustomerMovieTheatre;


commit;


-- CustomerMovieTheatreHall Table Data Population
INSERT INTO CustomerMovieTheatreHall VALUES (1,101,201,301);
INSERT INTO CustomerMovieTheatreHall VALUES (2,102,202,302);
INSERT INTO CustomerMovieTheatreHall VALUES (3,103,203,303);
INSERT INTO CustomerMovieTheatreHall VALUES (4,104,204,304);
INSERT INTO CustomerMovieTheatreHall VALUES (5,105,205,305);
INSERT INTO CustomerMovieTheatreHall VALUES (6,106,206,306);
INSERT INTO CustomerMovieTheatreHall VALUES (7,107,207,307);
INSERT INTO CustomerMovieTheatreHall VALUES (8,108,208,308);
INSERT INTO CustomerMovieTheatreHall VALUES (9,109,209,309);
INSERT INTO CustomerMovieTheatreHall VALUES (10,110,210,310);

Select * from CustomerMovieTheatreHall;

commit;

-- CustomerMovieTheatreHallShow Table Data Population
INSERT INTO CustomerMovieTheatreHallShow VALUES (1,101,201,301,401);
INSERT INTO CustomerMovieTheatreHallShow VALUES (2,102,202,302,402);
INSERT INTO CustomerMovieTheatreHallShow VALUES (3,103,203,303,403);
INSERT INTO CustomerMovieTheatreHallShow VALUES (4,104,204,304,404);
INSERT INTO CustomerMovieTheatreHallShow VALUES (5,105,205,305,405);
INSERT INTO CustomerMovieTheatreHallShow VALUES (6,106,206,306,406);
INSERT INTO CustomerMovieTheatreHallShow VALUES (7,107,207,307,407);
INSERT INTO CustomerMovieTheatreHallShow VALUES (8,108,208,308,408);
INSERT INTO CustomerMovieTheatreHallShow VALUES (9,109,209,309,409);
INSERT INTO CustomerMovieTheatreHallShow VALUES (10,110,210,310,410);

select * from CustomerMovieTheatreHallShow;

commit;

--CMTHST Table Data Population
INSERT INTO CMTHST VALUES (1,101,201,301,401,601);
INSERT INTO CMTHST VALUES (1,101,201,301,401,602);
INSERT INTO CMTHST VALUES (2,102,202,302,402,603);
INSERT INTO CMTHST VALUES (2,102,202,302,402,604);
INSERT INTO CMTHST VALUES (3,103,203,303,403,605);
INSERT INTO CMTHST VALUES (3,103,203,303,403,606);
INSERT INTO CMTHST VALUES (4,104,204,304,404,607);
INSERT INTO CMTHST VALUES (4,104,204,304,404,608);
INSERT INTO CMTHST VALUES (5,105,205,305,405,609);
INSERT INTO CMTHST VALUES (5,105,205,305,405,610);
INSERT INTO CMTHST VALUES (6,106,206,306,406,611);
INSERT INTO CMTHST VALUES (7,107,207,307,407,612);
INSERT INTO CMTHST VALUES (7,107,207,307,407,613);
INSERT INTO CMTHST VALUES (8,108,208,308,408,614);
INSERT INTO CMTHST VALUES (8,108,208,308,408,615);
INSERT INTO CMTHST VALUES (9,109,209,309,409,616);
INSERT INTO CMTHST VALUES (9,109,209,309,409,617);
INSERT INTO CMTHST VALUES (10,110,210,310,410,618);
INSERT INTO CMTHST VALUES (10,110,210,310,410,619);

Select * from CMTHST;

commit;











