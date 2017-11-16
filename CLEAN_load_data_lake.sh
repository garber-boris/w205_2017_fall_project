#! /bin/bash

# save my current working directory
MY_CWD=$(pwd)

# remove files from hdfs
hdfs dfs -rm /user/w205/project/routes/routes.txt
hdfs dfs -rm /user/w205/project/stops/stops.txt
hdfs dfs -rm /user/w205/project/stop_times/stop_times.txt
hdfs dfs -rm /user/w205/project/trips/trips.txt

# remove hdfs directory
hdfs dfs -rmdir /user/w205/project/routes
hdfs dfs -rmdir /user/w205/project/stops
hdfs dfs -rmdir /user/w205/project/stop_times
hdfs dfs -rmdir /user/w205/project/trips
hdfs dfs -rmdir /user/w205/project

# change back to original directory
cd $MY_CWD

# clean exit
exit
