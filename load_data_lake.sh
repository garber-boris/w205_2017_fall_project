#! /bin/bash

# save my current directory
MY_CWD=$(pwd)

# create hdfs directory and copy
hdfs dfs -mkdir /user/w205/project

OLD_FILE="routes.txt"
FILE="routes_clean.txt"
tail -n +2 "$OLD_FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/routes_clean
hdfs dfs -put $FILE /user/w205/project/routes_clean

OLD_FILE="stops.txt"
FILE="stops_clean.txt"
tail -n +2 "$OLD_FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/stops_clean
hdfs dfs -put $FILE /user/w205/project/stops_clean

OLD_FILE="stop_times.txt"
FILE="stop_times_clean.txt"
tail -n +2 "$OLD_FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/stop_times_clean
hdfs dfs -put $FILE /user/w205/project/stop_times_clean

OLD_FILE="trips.txt"
FILE="trips_clean.txt"
tail -n +2 "$OLD_FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/trips_clean
hdfs dfs -put $FILE /user/w205/project/trips_clean

# change back to original directory
cd $MY_CWD

# clean exit
exit
