CREATE DATABASE pageviews;

USE pageviews;

CREATE TABLE pageviews (
	lang STRING,
	page STRING,
	count INT
) ROW FORMAT DELIMITED
FIELDS TERMINATED BY ' ';

DESCRIBE pageviews;

LOAD DATA LOCAL INPATH '/home/samyers/hadoop-2.7.7/pageviews/pageviews' INTO TABLE pageviews;

SELECT * FROM pageviews;

SELECT DISTINCT(page), SUM(count) OVER (PARTITION BY page ORDER BY page DESC) 
AS total_count FROM pageviews 
WHERE lang = 'en' AND page != 'Main_Page' AND page != 'Special:Search' AND page != '-';







