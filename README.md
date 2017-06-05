# [BingBites](http://bingbites.axotix.com)
![alt text](http://bingbites.axotix.com/assets/pic01-7876631f1bac6c809dbfc4b906094c7f1481722e179d50c9de1bb8b3e9e80a55.jpg "Logo Title Text 1") 
## Restaurants and Events listings made easy.

-------

### BingBites is application for listing the restaurants or anyone who wants to list a place
in the locality intending to serve delicious food with events and their seasonal specialties.

We would be building the application with the following features

- Listing of the local restaurants

- Events scheduled daily at the local place

- Any specialties being served for the day.

Our target audience would be the people who often seek a delicious meal along with the pleasant ambiance and peculiar meal that matches your taste of food for your mood.

As of now this Project is under a coursework for CS545 Software Engineering, but we would want to expand on collaborations and would be accepting open source contributions soon.

Thank you for your interest to be a part of this open source initiative.

# Branching Strategy:

### Master: Production branch
- Only feature to be released i.e final product goes to master

### Develop: Feature after development 
- Checkout a new branch for every new feature to be developed
- Pull requests for any feature goes to develop branch

### Feature: Branch specific to a feature
- Created from a develop 
- Whenever new feature is to be worked on, as like a homepage, create a new branch from develop 
- The feature branch would be merged to develop and develop would then be merged to master before deployments

### Task/Story: Specific to an individual
- If multiple people work on a feature, use feature as a base branch for collaboration.

# Instructions for setting-up the project

### The BingBites Project is hosted at Git Repository for BingBites Organization 
  - URL : https://github.com/BingBites/bingbites 

### Steps:
  Hoping you have ssh access to the repository, here are the steps to follow.
  - 1. Clone the repository from the link to clone the project
  - 2. We have a test database up and running just for reference, but you 
       would need to set-up a local instance of the database on your system.
       Well, for this project we have production database to be postgre SQL.
       Follow instructions on the documentation for postgre sql to set-up
       the libraries and the depenencies.
  - 3. We would then need to set up the two env variables, export it
        - export TWITTER_KEY   -> this is your application auth for twitter app.
        - export TWITTER_SECRET  -> this would be the secret that for Oauth.
        - also you would need to update the mapbox api key from the developer docs.
          Both these keys can be obtained from the twitter developer hub.
  - 4. Once you have your database and env setup, move ahead to create new categories.
       As of now this is something that you need to seed into the database, as the 
       seed file for it has to be worked upon.
  - 5. Then just do a rails s to start the server and your application is up and running.
  - 6. Now, login using a twitter account and assign a role from rails console
       as SUPERDMIN so that you have access to admin features.
  - 7. Once up, create the Eateries from the admin page and it's done.
  
  Happily ready to serve!

### Note: 
  - If you happen to deploy the application on an unsecure domain i.e not https secured,
    When you log in, you may wonder why the geolocate feature isn't doing what it was 
    supposed to do i.e. geolocate and show the location of user.
    Now, this is something that goolge enforces when you host an application
    on a domain. Without a ssl secured domain, it wouldn't allow the client browser
    to allow the geolocate javascript to work as intended. So deploy the app over
    ssl and it would eork fine.


# About Team:

We are a team of 7 developers working towards a CS545 project
on building a rails application for Listing of Food and Events.

## Members of the team are:
- Suyog Nerkar
- Vaibhav Acharya
- Debashish Majumdar
- Kiran Kadam
- Pranav Garje
- Abhijit Bhandarkar
- Uddhav Mhatre

