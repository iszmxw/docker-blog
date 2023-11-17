#!/bin/bash

mysql_data_dir="./data/mysql/"
redis_data_dir="./data/redis/"
mysql_log_dir="./log/mysql/"
nginx_log_dir="./log/nginx/"

if [ ! -d $mysql_data_dir ]; then
    mkdir -p $mysql_data_dir
fi

if [ ! -d $redis_data_dir ]; then
    mkdir -p $redis_data_dir
    chmod 777 $redis_data_dir
fi

if [ ! -d $mysql_log_dir ]; then
    mkdir -p $mysql_log_dir
fi

if [ ! -d $nginx_log_dir ]; then
    mkdir -p $nginx_log_dir
fi

docker-compose up --build -d
