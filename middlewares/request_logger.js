const { query } = require("express")

function requestLogger(req, res, next) {
  
  console.log(`\n+-------------+`)
  //console.log(`${req.method} ${req.path}`)
  //console.log(`query`, req,query)
  //console.log(`params`)
  console.log(`body`, req.body)
  console.log(`+-------------+\n`)
  next()
}

module.exports = requestLogger