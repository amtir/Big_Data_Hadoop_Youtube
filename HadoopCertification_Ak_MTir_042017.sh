#!/bin/bash

#-----------------------------------------------
#-- Edureka: Big Data and Hadoop 
#-- Certification Project
#-- Youtube Data Analysis 
#------------------------------------------------
#-- @Purpose:This bach shell script executes all the scripts sequentially to: 
#-- Extract the Dataset and store it using Bash shell and Hadoop File System commands
#-- Process and analyse the data using Pig and Hive sql.
#------------------------------------------------
#-- @Edureka Student: Akram M'Tir
#-- @Date: 06-04-2017
#-- @Location: Lausanne, CH.
#-----------------------------------------------


bash Youtube_project_ImportData_1.sh


pig Youtube_project_PIG-Script_2.pig


hive -f Youtube_project_HIVE-Script_3.sql


hdfs dfs -get /project/youtube Questions_Answers/


