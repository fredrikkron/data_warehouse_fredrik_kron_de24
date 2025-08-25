USE SCHEMA DATAFEEDS;

SHOW TABLES;

-- Amount of rows
SELECT
    COUNT(*) AS total_rows
FROM
    GOOGLE_KEYWORDS;

-- First and last search date
SELECT
    MIN(DATE) AS first_search_date,
    MAX(DATE) AS last_search_date
FROM
    GOOGLE_KEYWORDS;

SELECT DISTINCT
    (DATE)
FROM
    GOOGLE_KEYWORDS;

-- Top 10 most popular keywords
SELECT
    keyword,
    COUNT(*) AS searches
FROM
    GOOGLE_KEYWORDS
GROUP BY
    keyword
ORDER BY
    searches DESC
LIMIT
    10;

-- Unique keywords
SELECT
    COUNT(DISTINCT keyword)
FROM
    GOOGLE_KEYWORDS; -- 7263686

SELECT DISTINCT
    (platform)
FROM
    GOOGLE_KEYWORDS; -- 1 (desktop)
    
SELECT
    platform,
    COUNT(calibrated_users) AS users_per_platform
FROM
    GOOGLE_KEYWORDS
GROUP BY
    platform
ORDER BY
    users_per_platform DESC; -- 35046855


-- 20 most popular keywords in Sweden
SELECT
    keyword,
    COUNT(*) AS searches
FROM
    GOOGLE_KEYWORDS
WHERE
    COUNTRY = 752
GROUP BY
    keyword
ORDER BY
    searches DESC
LIMIT
    20;

-- Top 10 Spotify searches by country
SELECT
    country,
    COUNT(*) AS spotify_searches
FROM
    GOOGLE_KEYWORDS
WHERE
    LOWER(keyword) LIKE '%spotify%'
GROUP BY
    country
ORDER BY
    spotify_searches DESC
LIMIT
    10;