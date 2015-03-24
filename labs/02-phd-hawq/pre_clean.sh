#!/bin/bash

hdfs dfs -rm /user/sample/sample.csv
hdfs dfs -expunge

psql -c 'drop external table if exists stage.car_sample_data_ext';
psql -c 'drop table if exists stage.car_sample_data';
