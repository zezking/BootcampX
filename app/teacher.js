const { Pool } = require("pg");
const pool = new Pool({
  user: "vagrant",
  port: 5432,
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

pool.connect();

const getCohortWithTeacherAssists = (cohortName) => {
  pool
    .query(
      `SELECT
    DISTINCT teachers.name as teacher,
    cohorts.name as cohort
FROM
    teachers
    JOIN assistance_requests ON teacher_id = teachers.id
    JOIN students ON student_id = students.id
    JOIN cohorts ON cohort_id = cohorts.id
WHERE
    cohorts.name = $1
ORDER BY
    teacher;
    `,
      [cohortName]
    )
    .then((data) => {
      data.rows.forEach((user) => {
        console.log(`${user.cohort}: ${user.teacher}`);
      });
    })
    .catch((err) => console.log(err));
};

let cohortName = `${process.argv[2]}`;

getCohortWithTeacherAssists(cohortName);
