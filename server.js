require("dotenv").config();
const express = require("express");
const app = express();
const port = process.env.PORT || 3000;
const expressLayouts = require("express-ejs-layouts");
const requestLogger = require("./middlewares/request_logger");
const methodOverride = require("method-override");
const session = require("express-session");
 
const tripsRouter = require("./routes/trips");
const indexRouter = require("./routes/index");
const tripItemsRouter = require("./routes/tripItems");
const sessionRouter = require("./routes/session");

const setUser = require("./middlewares/set_user");

app.set("view engine", "ejs");

app.use(express.static("public"));
app.use(express.urlencoded({ extended: true }));

app.use(methodOverride(function (req, res) {
  if (req.body && typeof req.body === 'object' && '_method' in req.body) {
    // look in urlencoded POST bodies and delete it
    var method = req.body._method
    delete req.body._method
    return method
  }
}));

app.use(requestLogger);

app.use(session({
  secret: process.env.SESSION_SECRET || 'keyboard cat',
  resave: false,
  saveUninitialized: true
}))

app.use(setUser);

app.use(expressLayouts);

app.use("/", sessionRouter);
app.use("/", tripsRouter);
app.use("/", indexRouter);
app.use("/", tripItemsRouter);

app.listen(port, () => {
  console.log(`listening on port ${port}`)
});