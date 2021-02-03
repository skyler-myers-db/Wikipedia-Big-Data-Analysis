CREATE DATABASE project1;

USE project1;

SET hive.exec.dynamic.partition = true;
SET hive.exec.dynamic.partition.mode = nonstrict;
SET hive.exec.max.dynamic.partitions = 500000;
SET hive.exec.max.dynamic.partitions.pernode = 500000;

CREATE EXTERNAL TABLE IF NOT EXISTS pageviews (
	lang STRING,
	page STRING,
	views INT)
	ROW FORMAT DELIMITED
	FIELDS TERMINATED BY ' '
	LOCATION '/user/skyler/Project1Hive';

LOAD DATA INPATH '/user/skyler/Project1Files/' INTO TABLE pageviews;

CREATE TABLE IF NOT EXISTS en_pageviews (
	page STRING,
	views INT
) PARTITIONED BY (lang STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t';

INSERT INTO TABLE en_pageviews PARTITION(lang = 'en')
SELECT page, views FROM pageviews WHERE lang = 'en';

CREATE TABLE IF NOT EXISTS total_en_pageviews
AS SELECT DISTINCT(page), SUM(views) OVER (PARTITION BY page ORDER BY page DESC) 
AS total_views FROM en_pageviews 
WHERE page != 'Main_Page' AND page != 'Special:Search' AND page != '-';

SELECT * FROM total_en_pageviews
WHERE total_views > 10000
ORDER BY total_views DESC;


