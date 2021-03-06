--4 Analyze engine rpm in 5% chunks
\timing
\echo summarizing statistics out of external table
SELECT MIN(enginerpm)::int, 
       AVG(enginerpm)::int,
       MEDIAN(enginerpm)::int,
       MAX(enginerpm)::int, 
       band 
FROM ( 
  SELECT enginerpm, 
         NTILE(20) OVER ( ORDER BY enginerpm ) AS band 
  FROM stage.car_sample_data_ext ) AS a 
GROUP BY band 
ORDER BY band;

\echo summarizing statistics out of internal table
SELECT MIN(enginerpm)::int, 
       AVG(enginerpm)::int,
       MEDIAN(enginerpm)::int,
       MAX(enginerpm)::int, 
       band 
FROM ( 
  SELECT enginerpm, 
         NTILE(20) OVER ( ORDER BY enginerpm ) AS band 
  FROM stage.car_sample_data ) AS a 
GROUP BY band 
ORDER BY band;
