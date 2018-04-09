
-----------------------------------------------
-- Edureka: Big Data and Hadoop 
-- Certification Project
-- Youtube Data Analysis 
------------------------------------------------
-- 3 - SQL -Hive Script
------------------------------------------------
-- @Purpose: In this part3, I use a hive sql script to solve question A, B and C.
-- @Edureka Student: Akram M'Tir
-- @Date: 06-04-2017
-- @Location: Lausanne, CH.
-----------------------------------------------


-- Creation of the ProjectYoutube DataBase
DROP DATABASE IF EXISTS ProjectYoutube CASCADE;
create database ProjectYoutube;
use ProjectYoutube;

-- Creation of the youtubeTable table
DROP TABLE IF EXISTS youtubeTable;
CREATE TABLE youtubeTable (VideoID STRING, Uploader STRING, Interval INT, Category STRING, VideoLength INT, NumberViews INT, Rating FLOAT, NumberRating INT, NumberComments INT, RelatedVideoIds STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';

-- Load the records in the youtubeTable
LOAD DATA LOCAL INPATH 'youtubeDataSet' OVERWRITE INTO table youtubeTable;

---------------------------------------------------------------------------------------
-- Question A: Find out the top 5 categories with maximum number of videos uploaded.
---------------------------------------------------------------------------------------
SELECT Category, count(*) as NumberUploaded FROM youtubeTable group BY Category order by NumberUploaded desc limit 5; 

-- Question B: Find out the top 10 rated videos.
--SELECT VideoID, Category, NumberViews, Rating, NumberRating FROM youtubeTable ORDER BY Rating desc, NumberRating desc Limit 10;

SELECT VideoID, Category, NumberViews, Rating, NumberRating FROM youtubeTable ORDER BY NumberRating desc Limit 10;

-- Question C: Find out the most viewed videos.
SELECT VideoID, Category, NumberViews, Rating, NumberRating FROM youtubeTable ORDER BY NumberViews desc Limit 20;


