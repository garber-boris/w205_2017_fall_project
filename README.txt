# see what devices are available:
fdisk -l

# mount EBS:
mount -t ext4 /dev/xvdf /data

# start hadoop: as root
/root/start-hadoop.sh

# start postgres:
/data/start_postgres.sh

# change user to w205
su - w205

# start metastore: (press enter after a little while to return to prompt)
/data/start_metastore.sh

# list contents of hdfs:
hdfs dfs -ls /user/w205

# clone repository:
git clone https://garber-boris@github.com/garber-boris/w205_2017_fall_project.git

# Load files:
cd w205_2017_fall_project
chmod u+x,g+x CLEAN_load_data_lake.sh
chmod u+x,g+x load_data_lake.sh
./CLEAN_load_data_lake.sh
./load_data_lake.sh

# check that everything made it into hdfs:
hdfs dfs -ls /user/w205/project

# Load hive sql file:
hive
source hive_base_ddl.sql;

# check that tables were created:
/data/spark15/bin/spark-sql
show tables;

# Shut down:
ps -ef|grep metastore
kill <id>
exit
/root/stop-hadoop.sh
/data/stop_postgres.sh