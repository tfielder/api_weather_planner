require 'rails_helper'

describe 'api/v1/weather' do
  it 'returns a successful response' do
    # sample_response = {}

    VCR.use_cassette('denver_weather_request') do
      get '/api/v1/weather?location=denver,co'
    end

    expect(response).to be_successful
    #expect(JSON.parse(response.body, :symbolize_names => true)).to eq(sample_response)
  end
end