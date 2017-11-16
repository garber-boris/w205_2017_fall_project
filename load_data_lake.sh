#! /bin/bash

# save my current directory
MY_CWD=$(pwd)

# create hdfs directory and copy
hdfs dfs -mkdir /user/w205/project

OLD_FILE="routes.txt"
FILE="routes_clean.txt"
tail -n +2 "$OLD_FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/routes
hdfs dfs -put $FILE /user/w205/project/routes

OLD_FILE="stops.txt"
FILE="stops_clean.txt"
tail -n +2 "$OLD_FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/stops
hdfs dfs -put $FILE /user/w205/project/stops

OLD_FILE="stop_times.txt"
FILE="stop_times_clean.txt"
tail -n +2 "$OLD_FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/stop_times
hdfs dfs -put $FILE /user/w205/project/stop_times

OLD_FILE="trips.txt"
FILE="trips_clean.txt"
tail -n +2 "$OLD_FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/trips
hdfs dfs -put $FILE /user/w205/project/trips

# change back to original directory
cd $MY_CWD

# clean exit
exit
