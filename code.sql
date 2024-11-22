WITH first_touch AS (
    SELECT user_id,
        MIN(timestamp) as first_touch_at
    FROM page_visits
    GROUP BY user_id)
SELECT ft.user_id,
    ft.first_touch_at,
    pv.utm_source,
		pv.utm_campaign
FROM first_touch ft
JOIN page_visits pv
    ON ft.user_id = pv.user_id
    AND ft.first_touch_at = pv.timestamp;

SELECT COUNT(DISTINCT utm_campaign) FROM page_visits;

SELECT COUNT(DISTINCT utm_source) FROM page_visits;

SELECT DISTINCT utm_source, utm_campaign FROM page_visits;

SELECT DISTINCT page_name FROM page_visits;

WITH first_touch AS (
    SELECT user_id,
        MIN(timestamp) as first_touch_at
    FROM page_visits
    GROUP BY user_id)
SELECT pv.utm_campaign, pv.utm_source, COUNT(*) as no_first_touches
FROM first_touch AS ft
JOIN page_visits AS pv
  ON ft.user_id = pv.user_id
  AND ft.first_touch_at = pv.timestamp
GROUP BY 1, 2
ORDER BY 3 DESC;

WITH last_touch AS (
  SELECT 
    user_id,
    MAX(timestamp) as last_touch_at
  FROM page_visits
  GROUP BY user_id)
SELECT pv.utm_campaign, pv.utm_source, COUNT(*) as no_last_touches
FROM last_touch AS lt
JOIN page_visits AS pv
  ON lt.user_id = pv.user_id
  AND lt.last_touch_at = pv.timestamp
GROUP BY 1, 2
ORDER BY 3 DESC;

SELECT DISTINCT page_name, COUNT(DISTINCT user_id) AS no_users
FROM page_visits
  WHERE page_name = '4 - purchase'
  GROUP BY page_name;

WITH last_touch AS (
  SELECT 
    user_id,
    MAX(timestamp) as last_touch_at
  FROM page_visits
  GROUP BY user_id)
SELECT pv.utm_campaign, COUNT(*) AS no_users
FROM page_visits pv
JOIN last_touch lt
  ON lt.user_id = pv.user_id
  AND lt.last_touch_at = pv.timestamp
WHERE pv.page_name = '4 - purchase'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

