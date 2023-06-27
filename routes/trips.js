const express = require("express");
const router = express.Router();
const db = require("../db/index.js");

router.get("/trips/new", (req, res) => {
  res.render("newTripForm")
})

router.get("/trips/:id", (req, res) => {
  let sql = `SELECT * FROM trips WHERE id = '${req.params.id}';`
  let sqlItem = `SELECT * FROM itineraries;`

  db.query(sql, (err, dbRes) => {
    if (err) {
      console.log(err)
    }
    db.query(sqlItem, (err, dbResItem) => {
      let trip = dbRes.rows[0]
      let tripItems = dbResItem.rows
      res.render("showTrip", {trip: trip, tripItems: tripItems})
    })
  })
})

router.post("/trips", (req,res) => {
  let title = req.body.title
  let imageURL = req.body.image_url
  let description = req.body.description
  const sql = `
  INSERT INTO trips (title, description, image_url)
  VALUES ('${title}', '${description}', '${imageURL}')
  RETURNING id;`

  db.query(sql, (err, dbRes) => {
    if (err) {
      console.log(err)
    }
    res.redirect(`/trips/${dbRes.rows[0].id}`)
  })
})

router.delete("/trips/:id", (req, res) => {
  let sql = `DELETE FROM trips WHERE id = '${req.params.id}';`
  db.query(sql, (err, dbRes) => {
    res.redirect("/")
  })
})

router.get("/trips/:id/edit", (req, res) => {
  const sql = `SELECT * FROM trips WHERE id = '${req.params.id}';`
  db.query(sql, (err, dbRes) => {
    let trip = dbRes.rows[0]
    res.render("editTrip", {trip: trip})
  })
})

router.put("/trips/:id", (req, res) => {
  const sql = `UPDATE trips
  SET title = '${req.body.title}',
  description = '${req.body.description}',
  image_url = '${req.body.image_url}'
  WHERE id = '${req.params.id}';`

  db.query(sql, (err, dbRes) => {
    res.redirect(`/trips/${req.params.id}`)
  })
})

module.exports = router