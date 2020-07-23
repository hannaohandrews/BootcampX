const { Pool, Client } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.connect();
// pool
//   .query('SELECT * FROM students')
//   .then((result) => console.log(result));


const queryString = `
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
;
`
const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
const values = [`%${cohortName}%`]

pool
  .query(queryString,values)
  .then(res => {
    res.rows.forEach(row => {
      // console.log(row)
      console.log(`${row.name} has an id of ${row.student_id} and was in the ${row.cohort} cohort`);
    })
  }).catch(err => console.error('query error', err.stack));
