# class Api::V1::CoordinatesController < ApplicationController
#   def index
#     result = GoogleGeoRequest.new(params[:location]).info
#     render json: result
#   end
# end