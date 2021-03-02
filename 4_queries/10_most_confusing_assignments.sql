SELECT
    assignments.id AS id,
    name AS name,
    day AS day,
    chapter AS chapter,
    COUNT(assistance_requests.*) AS total_requests
FROM
    assignments
    JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY
    assignments.id
ORDER BY
    COUNT(assistance_requests.*) DESC;