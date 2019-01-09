# class Api::V1::WeatherController < ApplicationController
#   def index
#     location = GoogleGeoRequest.new(params[:location]).info
#     result = DarkSkyRequest.new(location[:coordinates]).weather
#     weather = {
#       "location": location,
#       "weather": result
#     }
#     render json: weather
#   end
# end