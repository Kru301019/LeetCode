
DROP TYPE  consent_status CASCADE;
drop table consumer_complaints;

COPY consumer_complaints FROM '/home/up2166428/ConsumerComplaints.csv' DELIMITER ',' CSV HEADER;
CREATE TYPE consent_status AS ENUM ('Consent provided', 'Consent not provided', 'N/A','Other');
CREATE TYPE contact_method AS ENUM ('Phone', 'Web', 'Fax', 'Referral', 'Postal mail', 'Email');
CREATE TYPE time_method AS ENUM ('Yes', 'No');

CREATE TABLE consumer_complaints (
    date_received date,
    product_name  varchar(255) not null,
    sub_product varchar(255),
    issue varchar(255) not null,
    sub_issue varchar(255),
    consumer_complaint_narrative text,
    company_public_response text,
    company varchar(100) not null,
    state_name CHAR(3),
    zip_code CHAR(7),
    tags varchar(100),
    consumer_consent_provided consent_status,
    submitted_via contact_method not null,
    date_sent date,
    company_response_to_consumer text,
    timely_response time_method,
    consumer_disputed time_method,
    complaint_id INTEGER PRIMARY key
); 


CREATE TABLE ConsoleDates (
    ConsoleDate_id serial PRIMARY key,
    Platform CHAR(6) not null,
    FirstRetailAvailability DATE,
    Discontinued varchar(1200),
    UnitsSoldMillions FLOAT,
    COMMENT text
);

COPY ConsoleDates(Platform, FirstRetailAvailability, Discontinued, UnitsSoldMillions, COMMENT)
FROM '/home/up2166428/ConsoleDates.csv'
DELIMITER ',' 
CSV HEADER;



CREATE TABLE ConsoleGames(
    Rank int PRIMARY KEY,
    Name varchar(255),
    Platform varchar(255),
    Year FLOAT,
    Genre varchar(255),
    Publisher varchar(255),
    NA_Sales FLOAT,
    EU_Sales FLOAT,
    JP_Sales FLOAT,
    Other_Sales FLOAT
);

COPY ConsoleGames 
FROM '/home/up2166428/ConsoleGames.csv' 
DELIMITER ',' 
CSV HEADER;
--Demonstrate how to deal with the Game_Year column if the client wants to convert it to a different data type
SELECT CAST(year AS INTEGER)
FROM ConsoleGames;



--Order the platforms by their longevity in ascending order 
--(i.e., the platform which was available for the longest at the bottom)
SELECT 
    Platform,
    EXTRACT(YEAR FROM AGE(CAST(discontinued AS DATE) ,CAST(FirstRetailAvailability AS DATE))) as longevity
FROM 
    consoledates
where 
    EXTRACT(YEAR FROM AGE(CAST(discontinued AS DATE) ,CAST(FirstRetailAvailability AS DATE))) IS NOT NULL
ORDER by 
    EXTRACT(YEAR FROM AGE(CAST(discontinued AS DATE) ,CAST(FirstRetailAvailability AS DATE)));
--Display all console platforms which were released 
--either just before Black Friday (Nov) or just before Christmas (Dec) in any year.

SELECT 
    platform, 
    EXTRACT(month FROM firstretailavailability) release_months
FROM 
    consoledates
WHERE
    EXTRACT(month FROM firstretailavailability) IN (11, 12)
order by 
    release_months;

-- For each game title, extract only  the first four letters of publisher’s name

SELECT  
    name, 
    LEFT(publisher, 4) short_publisher
from ConsoleGames;

CREATE VIEW console_release_years AS 
SELECT 
    CD.platform, 
    EXTRACT(YEAR FROM CD.firstretailavailability) AS release_years
FROM 
    consoledates CD
ORDER BY 
    release_years DESC,
    CD.platform ASC;

SELECT 
    CD.platform, 
    EXTRACT(YEAR FROM CD.firstretailavailability) AS release_years
FROM 
    consoledates CD
ORDER BY 
    release_years DESC,
    CD.platform ASC;


SELECT
    ROUND(
        CAST(SUM(cg.na_sales) * 100.0 /
             (SUM(cg.na_sales) + SUM(cg.eu_sales) + SUM(cg.jp_sales) + SUM(cg.other_sales)) AS NUMERIC),
        2
    ) AS na_sales_percentage
FROM consolegames cg;

SELECT
    issue
FROM
    consumer_complaints
WHERE
    issue ILIKE '%Late%'
LIMIT
    5;


SELECT
    product_name
FROM
    consumer_complaints
WHERE
    product_name ILIKE '%credit%'
LIMIT
    5;


SELECT
    issue AS issues_from_newYork,
    state_name
FROM
    consumer_complaints
WHERE
    state_name IN ('NY', 'CA')
LIMIT
    5;


SELECT
    issue AS issues_from_newYork,
    state_name
FROM
    consumer_complaints
WHERE
    state_name = 'NY'
LIMIT
    5;


SELECT
    count(*) AS same_day_recive_sent
FROM
    consumer_complaints
WHERE
    date_received = date_sent;