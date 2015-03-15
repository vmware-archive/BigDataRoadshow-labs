--3. Load data into HAWQ table

insert into stage.car_sample_data
select * from stage.car_sample_data_ext;
analyze stage.car_sample_data;
