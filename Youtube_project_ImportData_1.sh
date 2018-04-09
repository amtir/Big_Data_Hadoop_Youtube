#!/bin/bash

#-----------------------------------------------
#-- Edureka: Big Data and Hadoop 
#-- Certification Project
#-- Youtube Data Analysis 
#------------------------------------------------
#-- 1 - Data extraction and storage using Bash shell and Hadoop File System commands.
#------------------------------------------------
#-- @Purpose: In this part1, I import and extract the data-set and store it in the HDFS.
#-- @Edureka Student: Akram M'Tir
#-- @Date: 06-04-2017
#-- @Location: Lausanne, CH.
#-----------------------------------------------

# ETL - Extraction, Transformation and Load
# 1 - Clean the data and reduce the nose using bash shell and  Pig.

printSep(){
echo; echo "---------------------------------------";echo $1; echo "---------------------------------------";}

# ----------------------------------------------------------------
# - Import and load the data set for the youtube project.
# ----------------------------------------------------------------
wget https://edureka.wistia.com/medias/6cchxi6to4/download?media_file_id=65311528
mv download\?media_file_id\=65311528 youtubeDataSet

# ----------------------------------------------------------------
# Let's have a closer look at the data imported. Let's print some statistics about the data set (such as the number of rows, uniq categories, sample of the records ...)
# ---------------------------------------------------------------------
NbrLines=`cat youtubeDataSet | wc -l`
printSep "Total Number of records:  $NbrLines" 
printSep "Decomposition of the records by Categories: ";cat youtubeDataSet | awk -F\\t '{print $4}' | sort | uniq -c | sort -rn; 
printSep "Sample records: ";cat youtubeDataSet | awk -F\\t '{print $1,$2,$3,$4, $5, $6, $7, $8, $9}' | sort | head; 

# From the data set, we can observe that the number of fields in each record (or row) could vary due to the last part, the related video ids. 
# The first 9 elements or fields in each record are sufficient to tackle and solve the youtube problem. This will allows us to have a structured table schema that we can query later with Hive.

cat youtubeDataSet | awk -F\\t '{print $1,$2,$3,$4, $5, $6, $7, $8, $9}' | sort > ETLyoutubeDataSet


# ----------------------------------------------------------------
# HADOOP HDFS File System
# 2 - Store the data into the HDFS Hadoop File System
# ------------------------------------------------------------
hdfs dfs -rm -f -r -R /project
hdfs dfs -mkdir -p /project  
hdfs dfs -mkdir -p /project/youtube/  

hadoop fs -put youtubeDataSet /project/youtube/youtubeDataSet
#hadoop fs -put ETLyoutubeDataSet /project/youtube/ETLyoutubeDataSet

hadoop fs -cat /project/youtube/youtubeDataSet





