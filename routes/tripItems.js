const express = require("express");
const router = express.Router();
const db = require("../db/index.js");
const ensureLoggedIn = require("../middlewares/ensured_logged_in.js");

router.get("/trips/:tripId/tripItems/new", ensureLoggedIn, (req, res) => {
  const tripId = req.params.tripId
  //console.log({tripId})
  res.render("newTripItem", {tripId})
  })

router.get("/tripItems/:id", ensureLoggedIn, (req, res) => {
  const sql = `SELECT * FROM itineraries WHERE id = $1;`
  db.query(sql, [req.params.id],(err, dbRes) => {
    if (err) {
      console.log(err)
    }
    let tripItem = dbRes.rows[0]
    res.render("showTripItem", {tripItem: tripItem})
  })
})

router.post("/tripItems", ensureLoggedIn, (req,res) => {
  let type = req.body.type
  let location_origin = req.body.location_origin
  let destination = req.body.destination
  let fromtime = req.body.fromtime
  let totime = req.body.totime
  let company = req.body.company
  let bookingReference = req.body.booking_reference
  let tripId = req.body.tripId

  const sql = `
  INSERT INTO itineraries (type, location_origin, destination, fromtime, totime, company, booking_reference, trip_id)
  VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
  RETURNING id;`

  db.query(sql, [type, location_origin, destination, fromtime, totime, company, bookingReference, tripId], (err, dbRes) => {
    if (err) {
      console.log(err)
    }
    res.redirect(`/tripItems/${dbRes.rows[0].id}`)
  })
})

router.delete("/trips/:tripId/tripItems/:id", ensureLoggedIn, (req, res) => {
  const sql = `DELETE FROM itineraries WHERE id = $1;`
  db.query(sql, [req.params.id], (err, dbRes) => {
    res.redirect(`/trips/${req.params.tripId}`)
  })
})

router.get("/trips/:tripId/tripItems/:id/edit", ensureLoggedIn, (req, res) => {
  const sql = `SELECT * FROM itineraries WHERE id = $1;`
  db.query(sql, [req.params.id], (err, dbRes) => {
    let tripItem = dbRes.rows[0]
    res.render("editTripItem", {tripItem: tripItem})
  })
})

router.put("/trips/:tripId/tripItems/:id", (req,res) => {
  const sql = `UPDATE itineraries
  SET type = $1,
  location_origin = $2,
  destination = $3,
  fromtime = $4,
  totime = $5,
  company = $6',
  booking_reference = $7
  WHERE id = $8;`

  db.query(sql, [req.body.type, req.body.location_origin, req.body.destination, req.body.fromtime, req.body.totime, req.body.company, req.body.booking_reference, req.params.id], (err, dbRes) => {
    res.redirect(`/tripItems/${req.params.id}`)
  })
})

module.exports = router;