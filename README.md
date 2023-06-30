# Wander-plan

## Link of my application
This site was built using [rander page](https://wander-plan.onrender.com).

## Demo-user
email: chatkamon@ga.co
password: mooham

## Description
The application allows users to add itinerary items to their trips, including flights, car trips, hotels, and sightseeing activities. Users can specify the type of each itinerary item, along with relevant details such as location, time, and booking references.

To ensure privacy and personalized experiences, the application provides user authentication functionality. Users need to log in and access their own trips and itineraries.

## Technologies Used
* Node.js
* Express.js
* EJS (Embedded JavaScript)
* SQL
* Bcrypt
* HTML, CSS, and JavaScript

<img width="790" alt="image" src="https://github.com/zebelity/Wander-plan/assets/112873206/01b3abe1-1e62-43a8-8fda-2467c5cc58d3">

## Data Types
* Flights: Flights, car trips
* Stays: Hotels, sightseeing

## Schema
1. Users
* Id
* Email
* password_digest

2. Trips
* Id
* UserId
* Title (e.g., "Euro Trip")
* Description
* Image URL

3. Itineraries (tripItems)
* TripId
* Type ("flight" or "stay")
* LocationOrOrigin
* Destination (optional)
* FromTime
* ToTime
* Company
* BookingReference

## Features

<img width="1328" alt="image" src="https://github.com/zebelity/Wander-plan/assets/112873206/eae286d3-1a75-42e0-8e99-ecd8b612ffcd">

<img width="1323" alt="image" src="https://github.com/zebelity/Wander-plan/assets/112873206/b85ce347-d083-4dfe-a0a6-d5919f3ff1de">


* User-friendly interface for creating and managing trips.
* Add flights, car trips, hotels, and sightseeing activities as itinerary items of the trip.
* Specify detailed information for each itinerary item, such as location, time, and booking references.
* User authentication functionality to ensure privacy and personalized experiences.
* Secure login system to protect user data.
* Easily access and view your own trips and itineraries after logging in.


## Future Enhancements
* Implement a user account creation feature that allows new users to sign up and create their own accounts. 
* Enable users to upload photos from their phone or computer to enhance their trip documentation and memories. 
* Integration with external APIs to fetch real-time flight and hotel information.
* Social media sharing functionality to share trips with friends and family.
* Implement a timeline-based trip planning feature that allows users to organize their itinerary items in a chronological order. 
* Integration with mapping services to display trip itineraries on a map.
* Collaboration features to allow multiple users to plan trips together.
* Option to mark trips as public or personal.
* Implement a past trip archive feature that categorizes and stores completed trips separately from ongoing or upcoming trips.
* Implement a gallery view that displays all the uploaded photos for a trip as memories.
* Like and favorite buttons for trips to save and share your favorite travel plans.

