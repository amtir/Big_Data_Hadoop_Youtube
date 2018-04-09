/*-----------------------------------------------
-- Edureka: Big Data and Hadoop 
-- Certification Project
-- Youtube Data Analysis 
------------------------------------------------
-- 2 - PIG -Pig Script
------------------------------------------------
-- @Purpose: In this part2, I use a pig script to solve question B and C.
-- @Edureka Student: Akram M'Tir
-- @Date: 06-04-2017
-- @Location: Lausanne, CH.
-----------------------------------------------*/


/*------------------------------------------------------------------------
2 - ETL Data with PIG - Let's extract a relation with the first 10 fields in each row.
--------------------------------------------------------------------------*/
A = LOAD '/project/youtube/youtubeDataSet' using PigStorage('\t') as (VideoID:chararray, Uploader:chararray, Interval:int,Category:chararray, VideoLength:int, NumberViews:int, Rating:float, NumberRating:int, NumberComments:int, RelatedVidIds:chararray);
store A into '/project/youtube/ETLyoutubeDataSet' using PigStorage('\t');


/*------------------------------------------------------------------------
Question B: Find out the top 10 rated videos with the highest number of rates.
--------------------------------------------------------------------------*/
B = ORDER A BY NumberRating DESC;
C= LIMIT B 15;
D = FOREACH C generate VideoID, Category, NumberViews, Rating, NumberRating;
DUMP D;
store D into '/project/youtube/B_Question_Top10RatedVideo' using PigStorage(',');


/*------------------------------------------------------------------------
Question C: Find out the most viewed videos. Number of views for the video of integer data type.
--------------------------------------------------------------------------*/
E = ORDER A BY NumberViews DESC;
F= LIMIT E 20;
G = FOREACH F generate VideoID, Category, NumberViews, Rating, NumberRating;
DUMP G;
store G into '/project/youtube/C_Question_MostViewedVideo' using PigStorage(',');


