require("dotenv").config();
const db = require('./index.js');
const bcrypt = require("bcrypt");

let email = "chatkamon@ga.co"
let plaintTextPassword = "mooham";
let saltRounds = 10;

//generate a salt
bcrypt.genSalt(saltRounds, (err, salt) => {
  //digest/hash the password
  bcrypt.hash(plaintTextPassword, salt, (err, hash) => {
    //insert new user into the database
    let sql = `INSERT INTO users (email, password_digest)
    VALUES ('${email}', '${hash}');`

    db.query(sql, (err, res) => {
      if (err) {
        console.log(err)
      } else {
        console.log("new user created")
      }
    })
  })
})