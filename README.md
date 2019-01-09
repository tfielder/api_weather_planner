# Whetherwise API README
## Table of Contents

* [Introduction](#introduction)
* [Core Details](#core-details)
* [Initial Setup](#initial-setup)
* [How to Use](#how-to-use)
* [Dependencies](#dependencies)
* [Known Issues](#known-issues)
* [Running Tests](#running-tests)
* [How To Contribute](#how-to-contribute)
* [Tech Stack List](#tech-stack-list)

## <a name="introduction"></a>Introduction
  Many of us plan our activities and what we'll wear based on the weather, so why not have all of these in one place? The Weather Planner API supports the Weather Planner app that integrates the weather, apparel recommendations based on the weather, and daily events all in one place.

  Visit the api here:

  This app also makes use of the weather planner live app found here: https://whetherwise.herokuapp.com/
  The backend api repo can be found here: https://github.com/tfielder/api_weather_planner
  And the backend live api can be found here: https://weather-planner-api.herokuapp.com/

## <a name="core-details"></a>Core Details
  App Name: Weather Planner
  Last Update: 01/05/19
  Authors/Contributors: Tim Fielder
  Version: 1.1.1

## <a name="initial-setup"></a>Initial Setup
  To get started locally:
  1. Clone the repo found here: (https://github.com/tfielder/api_weather_planner)
  2. Run `bundle` from the CLI.
  3. Run `rails s`
  4. Navigate to `localhost:3000` in the address bar of your browser.

  You will need to register with the Google API Geo service to get an api key.
  Save your api key after you register and store it as an environment variable called 'google_api_key'.
  You will need to register with the Dark Sky API service to get an api key.
  Save your api key after you register and store it as an environment variable called 'dark_sky_api_key'.


## <a name="how-to-use"></a>How to Use
### Endpoints
Note: These endpoints may be accessed online. If you are running the project locally, you will need api keys.

<!-- 1. get 'api/v1/coordinates?location=<location of your choice>'
  Note: This endpoint requires a Google Geo API key.
  The response will be formatted as a json object with a response status of 200 if successful.
  e.g. response
  <br>
  ![screen shot 2019-01-05 at 10 09 26 pm](https://user-images.githubusercontent.com/38568909/50732369-dde21c00-1136-11e9-8015-aa4e660227b1.png)
  <br>

2. get 'api/v1/weather?location=<location of your choice>'
  Note: this endpoint requires both a Google Geo API key and a Dark Sky API key.
  The response will be formatted as a json object with a response status of 200 if successful.
  The main keys are "location" and "weather"
  e.g. response
  <br>
  ![screen shot 2019-01-06 at 11 06 21 am](https://user-images.githubusercontent.com/38568909/50739875-3f3fd480-11a3-11e9-858b-60acdd1658eb.png)
  <br> -->
1. get 'api/v1/location_results?location=<location of your choice>'
  Note: this endpoint requires both a Google Geo API key and a Dark Sky API key.
  The response will be formatted as a json object with a response status of 200 if successful.
  The main keys are "location" and "weather"
  e.g. response
  <br>
  ![screen shot 2019-01-06 at 11 06 21 am](https://user-images.githubusercontent.com/38568909/50739875-3f3fd480-11a3-11e9-858b-60acdd1658eb.png)
  <br>

## <a name="dependencies"></a>Dependencies
Gems:
* 'faker'
* 'figaro'
* 'active_model_serializers'
* 'faraday'
* 'rack-cors', require: 'rack/cors'

testing:
* rspec-rails
* capybara
* factory_bot_rails
* pry
* shoulda-matchers
* launchy
* database_cleaner
* simplecov
* 'vcr'
* 'webmock'

## <a name="known-issues"></a>Known Issues

## <a name="running-tests"></a>Running Tests

## <a name="how-to-contribute"></a>How to Contribute
  Drop a line to the creator, or add a Pull Request on GitHub.

## <a name="tech-stack-list"></a>Tech Stack List
* Ruby 2.4.1
* Ruby on Rails 5.1
