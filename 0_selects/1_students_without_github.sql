-- SELECT id, name, email, cohort_id GROUP BY cohort_id  Wrong
SELECT
    id,
    name,
    email,
    cohort_id
FROM
    students
WHERE
    github IS NULL
ORDER BY
    cohort_id