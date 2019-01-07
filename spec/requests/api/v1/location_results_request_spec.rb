require 'rails_helper'

describe 'api/v1/location_results' do
  it 'returns a successful response' do

    VCR.use_cassette('denver_results_request') do
      get '/api/v1/location_results?location=denver,co'
    end

    expect(response).to be_successful
    result = JSON.parse(response.body, :symbolize_names => true)
    expect(result[:weather][:latitude]).to eq(39.7392358)
    expect(result[:weather][:longitude]).to eq(-104.990251)
    expect(response).to be_successful
  end
end