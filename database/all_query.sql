1.
select * from price, movie, video, detailrental, rental, membership
2.
SELECT MEM_NUM,MEM_FNAME,MEM_LNAME, MEM_STREET, MEM_CITY, MEM_STATE, MEM_ZIP, MEM_BALANCE FROM membership
3.
SELECT * FROM `movie` order by MOVIE_YEAR
4.
SELECT * FROM `detailrental` order by VID_NUM , DETAIL_DUEDATE;
5.
SELECT concat(MEM_FNAME, ' ', MEM_LNAME) AS `full name` FROM membership

11.
SELECT * FROM `detailrental` WHERE DETAIL_RETURNDATE is NULL;
12.
SELECT * FROM `detailrental` WHERE DETAIL_RETURNDATE BETWEEN '2016-03-05' AND '2016-03-10';
13.





24.
SELECT MOVIE_NUM, MOVIE_TITLE FROM movie ORDER BY MOVIE_NUM DESC
