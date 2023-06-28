const express = require("express");
const router = express.Router();
const db = require("../db/index.js");
const ensureLoggedIn = require("../middlewares/ensured_logged_in.js");

router.get("/trips/new", ensureLoggedIn, (req, res) => {
  res.render("newTripForm")
})

router.get("/trips/:id", ensureLoggedIn, (req, res) => {
  const sql = `SELECT * FROM trips WHERE id = $1;`
  const sqlItem = `SELECT * FROM itineraries WHERE trip_id = $1;`

    db.query(sql, [req.params.id],(err, dbRes) => {
      if (err) {
        console.log(err)
      }
      db.query(sqlItem, [req.params.id],(err, dbResItem) => {
        let trip = dbRes.rows[0]
        let tripItems = dbResItem.rows
        res.render("showTrip", {trip: trip, tripItems: tripItems})
    })
  })
})

router.post("/trips", ensureLoggedIn, (req,res) => {
  let title = req.body.title
  let imageURL = req.body.image_url
  let description = req.body.description
  const sql = `
  INSERT INTO trips (title, description, image_url, user_id)
  VALUES ($1, $2, $3, $4)
  RETURNING id;`

  db.query(sql, [title, description, imageURL, req.session.userId],(err, dbRes) => {
    if (err) {
      console.log(err)
    }
    res.redirect(`/trips/${dbRes.rows[0].id}`)
  })
})

router.delete("/trips/:id", (req, res) => {
  const sql = `DELETE FROM trips WHERE id = $1;`
  db.query(sql, [req.params.id],(err, dbRes) => {
    res.redirect("/")
  })
})

router.get("/trips/:id/edit", ensureLoggedIn, (req, res) => {
  const sql = `SELECT * FROM trips WHERE id = $1;`
  db.query(sql, [req.params.id], (err, dbRes) => {
    let trip = dbRes.rows[0]
    res.render("editTrip", {trip: trip})
  })
})

router.put("/trips/:id", (req, res) => {
  const sql = `UPDATE trips
  SET title = $1,
  description = $2,
  image_url = $3
  WHERE id = $4;`

  db.query(sql, [req.body.title, req.body.description, req.body.image_url, req.params.id], (err, dbRes) => {
    res.redirect(`/trips/${req.params.id}`)
  })
})

module.exports = router;