-- My answer SELECT
--     COUNT (*),
--     teachers.name
-- FROM
--     assistance_requests
--     JOIN teachers ON teachers.id = teacher_id
-- WHERE
--     teachers.name = 'Waylon Boehm'
-- GROUP BY
--     teachers.name;
--correct answer
SELECT
    count(assistance_requests.*) as total_assistances,
    teachers.name
FROM
    assistance_requests
    JOIN teachers ON teachers.id = teacher_id
WHERE
    name = 'Waylon Boehm'
GROUP BY
    teachers.name;