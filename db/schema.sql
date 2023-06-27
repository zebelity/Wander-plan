CREATE DATABASE travelapp;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email TEXT,
  password_digest TEXT
);

CREATE TABLE trips (
  id SERIAL PRIMARY KEY,
  title TEXT,
  description TEXT,
  image_url Text,
  user_id INTEGER
);

CREATE TABLE itineraries (
  id SERIAL PRIMARY KEY,
  type TEXT,
  location_origin TEXT,
  destination Text,
  fromtime TIMESTAMP,
  totime TIMESTAMP,
  company TEXT,
  booking_reference TEXT,
  trip_id INTEGER
);

INSERT INTO trips (title, description, image_url)
VALUES ('Europe', 'Italy and Switzerland', 'https://static.saltinourhair.com/wp-content/uploads/2019/09/23131634/best-europe-city-trip.jpg');

INSERT INTO trips (title, description, image_url)
VALUES ('Japan', 'Tokyo and Osaka', 'https://s3-cdn.designerjourneys.com/blog/wp-content/uploads/2020/08/24104726/sorasak-_UIN-pFfJ7c-unsplash-1-2048x1367.jpg');

INSERT INTO itineraries (type, location_origin, destination, fromtime, totime, company, booking_reference, trip_id)
VALUES ('Flight', 'Sydney', 'Milan', 'Jul 18, 2023 07:34 AM', 'Jul 19, 2023 05:40 PM', 'Singapore Airline', 'SDF34', 1);

INSERT INTO itineraries (type, location_origin, fromtime, totime, company, booking_reference, trip_id)
VALUES ('Stay', 'Milan', 'Jul 19, 2023 06:00 PM', 'Jul 23, 2023 12:00 PM', 'Castello Guest House Milano', '237753', 1);