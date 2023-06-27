const express = require("express");
const router = express.Router();
const pg = require("pg");

const db = require("../db/index.js")

router.get("/", (req, res) => {
  //asynchronus
  db.query('SELECT * FROM trips', (err, dbRes) => {
    if (err) {
      console.log(err)
    }
      let trips = dbRes.rows
      res.render("home", {trips: trips})
  })
});

module.exports = router;