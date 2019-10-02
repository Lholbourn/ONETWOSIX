The aim of 126 is to take away the stress of spending minutes/hours deciding what movie to watch and what food to eat. The user tells us where they are located (with postcode), and their movie genre and food type preferences. With this, we curate 3 combinations of movies that are available to them on Netflix and restaurants that deliver to their address. 

This project was the culmination of two weeks of work between myself and 3 other students at Le Wagon, it was our final project and we designed it all from scratch - including designing UI/UX (with Figma & Whimsical), creating the database and doing all back-end and front-end to create a working product. 

We used API's in order to dynamically integrate the movie trailer to the movie poster, as well as another API (UNoGS) to search for movies on Netflix that are available in the UK with good imdb ratings, and parsed the data about these movies so that the poster was available in addition to a link to the movie on the Netflix website. 

As a team, we presented this project to the public at the Le Wagon Demo Day at the Google campus in London:

[<img src="https://i.ytimg.com/vi/TOaAPiKtnic/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&amp;rs=AOn4CLCbyIoBBJ-7BRXlnkUUuRpuFoxrMg" width="50%">](https://youtu.be/TOaAPiKtnic?t=3805)

This project is primarily done with Ruby on Rails (Rails 5), with JS for asynchronous actions & DOM manipulation, alongside HTML, CSS.
To run on your machine, you must be able to run RoR and to create a database (<b>rails db:create</b>) using postgreSQL, and download all gems assocciated using console commands <b>
yarn install</b> and <b>bundle install</b>. You will need to get API keys for UNoGS (https://rapidapi.com/unogs/api/unogs/endpoints), and a Google API key to use their youtube search API (https://www.npmjs.com/package/youtube-search). Once you have API keys, seed (<b>rails db:seed</b>) and migrate (<b>rails db:migrate</b>). To host to local server, type the following command into your terminal; <b>rails server</b> (or <b>rails s</b>) and follow the url it provides.

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
