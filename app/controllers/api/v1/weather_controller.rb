class Api::V1::WeatherController < ApplicationController
  def index
    location = GoogleGeoRequest.new(params[:location]).info
    #location = {:coordinates=>{"lat"=>39.7392358, "lng"=>-104.990251}, :address=>"Denver, CO, USA"}
    result = DarkSkyRequest.new(location[:coordinates]).weather
    render json: result
  end
end