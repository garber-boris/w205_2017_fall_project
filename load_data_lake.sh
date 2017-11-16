#! /bin/bash

# save my current directory
MY_CWD=$(pwd)

# create hdfs directory and copy
hdfs dfs -mkdir /user/w205/project

FILE="routes.txt"
tail -n +1 "$FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/routes
hdfs dfs -put $FILE /user/w205/project/routes

FILE="stops.txt"
tail -n +1 "$FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/stops
hdfs dfs -put $FILE /user/w205/project/stops

FILE="stop_times.txt"
tail -n +1 "$FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/stop_times
hdfs dfs -put $FILE /user/w205/project/stop_times

FILE="trips.txt"
tail -n +1 "$FILE" > $FILE
hdfs dfs -mkdir /user/w205/project/trips
hdfs dfs -put $FILE /user/w205/project/trips

# change back to original directory
cd $MY_CWD

# clean exit
exit
