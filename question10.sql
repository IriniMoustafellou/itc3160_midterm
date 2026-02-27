--Q10
SELECT COUNT(DISTINCT exhibition_id) AS exhibition_count
FROM view_exhibition
WHERE artwork_id = 1001;
