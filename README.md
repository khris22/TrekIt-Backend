# trekIt (Backend)

trekIt is an app for everybody who wants to track their outdoor adventures. This app uses Geocoder to help you search a particular location/park on the web and Mapbox to visually render your own map of adventures.

There are 2 repositories to have the trekIt app working. Please clone both links:

1. Ruby on Rails Backend: [https://github.com/khris22/TrekIt-Backend](https://github.com/khris22/TrekIt-Backend)
2. ReactJs-Redux Frontend: [https://github.com/khris22/TrekIt-Frontend](https://github.com/khris22/TrekIt-Frontend)

## Overview

trekIt is a Reactjs-Redux Single Page Application (SPA) with a backend Ruby on Rails API. This app allows the user to choose a location using Geocoder and save it on their list. Once the location is saved, the user can now start tracking their adventures for that saved location. This app has a functionality to delete a particular location as well as the adventure saved. It also gives the user the ability to edit their adventures.

## Installation

Please clone this repository and follow the following directions below to use the app. Please note that you will need to use two separate terminal tabs for this project.

Terminal A

1. Please type `cd backend-cocktail-api` to be in the backend directory.
2. In there, run `bundle install` , `rails db:migrate` and then `rails db:seed` respectively
3. Run `rails s` to start the server (most likely it will go to your `http://localhost:3000` unless you have other server running).

Terminal B

1. For the frontend make sure you in the right directory, please type`cd frontend-cocktail-api`
2. Then please run `npm start` or `yarn start`. This repository is set to run in your `http://localhost:3001/`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/khris22/TrekIt-Backend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The project is available as open source under the terms of the [MIT License](https://github.com/khris22/TrekIt-Backend/blob/master/LICENSE).

## Code of Conduct

Everyone interacting in the trekIt project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/khris22/TrekIt-Backend/blob/master/CODE_OF_CONDUCT.md).
