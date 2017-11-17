#! /bin/bash

# save my current working directory
MY_CWD=$(pwd)

# remove files from hdfs
hdfs dfs -rm /user/w205/project/routes/routes_clean.txt
hdfs dfs -rm /user/w205/project/stops/stops_clean.txt
hdfs dfs -rm /user/w205/project/stop_times/stop_times_clean.txt
hdfs dfs -rm /user/w205/project/trips/trips_clean.txt

# remove hdfs directory
hdfs dfs -rmdir /user/w205/project/routes_clean
hdfs dfs -rmdir /user/w205/project/stops_clean
hdfs dfs -rmdir /user/w205/project/stop_times_clean
hdfs dfs -rmdir /user/w205/project/trips_clean
hdfs dfs -rmdir /user/w205/project

# change back to original directory
cd $MY_CWD

# clean exit
exit
