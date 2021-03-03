const { Pool } = require("pg");
const pool = new Pool({
  user: "vagrant",
  port: 5432,
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

pool.connect();

// pool
//   .query(
//     "SELECT students.id, students.name, cohorts.name AS cohort FROM students JOIN cohorts ON cohorts.id=students.cohort_id LIMIT 5;"
//   )
//   .then((res) =>
//     res.rows.forEach((user) => {
//       console.log(
//         `${user.name} has an ID of ${user.id} and is in ${user.cohort}`
//       );
//     })
//   )
//   .catch((err) => console.log(err));

const getSpecificCohort = (cohortName) => {
  pool
    .query(
      `SELECT students.id, students.name, cohorts.name AS cohort FROM students JOIN cohorts ON cohorts.id=students.cohort_id WHERE cohorts.name LIKE '%${cohortName}%' LIMIT ${limit};`
    )
    .then((res) =>
      res.rows.forEach((user) => {
        console.log(
          `${user.name} has an ID of ${user.id} and is in ${user.cohort}`
        );
      })
    )
    .catch((err) => console.log(err));
};

let cohortName = process.argv[2];
let limit = process.argv[3];
getSpecificCohort(cohortName);
