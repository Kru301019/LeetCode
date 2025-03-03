 Table "public.consumer_complaints"
            Column            |          Type          | Collation | Nullable | Default
------------------------------+------------------------+-----------+----------+---------
 date_received                | date                   |           |          |
 product_name                 | character varying(255) |           | not null |
 sub_product                  | character varying(255) |           |          |
 issue                        | character varying(255) |           | not null |
 sub_issue                    | character varying(255) |           |          |
 consumer_complaint_narrative | text                   |           |          |
 company_public_response      | character varying(255) |           |          |
 company                      | character varying(100) |           |          |
 state_name                   | character(3)           |           |          |
 zip_code                     | character(7)           |           |          |
 tags                         | character varying(100) |           |          |
 consumer_consent_provided    | consent_status         |           |          |
 submitted_via                | contact_method         |           |          |
 date_sent                    | date                   |           |          |
 company_response_to_consumer | text                   |           |          |
 timely_response              | time_method            |           |          |
 consumer_disputed            | time_method            |           |          |
 complaint_id                 | integer                |           | not null |
Indexes:
    "consumer_complaints_pkey" PRIMARY KEY, btree (complaint_id)


CREATE TABLE ConsoleDates (
    Platform CHAR(6) PRIMARY Key,
    FirstRetailAvailability DATE,
    Discontinued varchar(1200),
    UnitsSoldMillions FLOAT,
    COMMENT text
);

COPY ConsoleDates FROM '/home/up2166428/ConsoleGames.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE ConsoleGames(
    Rank int PRIMARY KEY,
    Name text,
    Platform varchar(255),
    Year FLOAT,
    Genre varchar(255),
    Publisher varchar(255),
    NA_Sales FLOAT,
    EU_Sales FLOAT,
    JP_Sales FLOAT,
    Other_Sales FLOAT
);
COPY ConsoleGames FROM 'G:\My Drive\year 3\1. Advanced Database Concepts (ADCON)\files' DELIMITER ',' CSV HEADER;

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