--3. Load data into HAWQ table
\timing
\echo 'Inserting data from external table to internal table'
insert into stage.car_sample_data
select * from stage.car_sample_data_ext;

\echo 'Analyzing the internal table'
analyze stage.car_sample_data;

\echo 'Count of rows in external table'
select count(1) from stage.car_sample_data_ext;

\echo 'Count of rows in internal table'
select count(1) from stage.car_sample_data;
