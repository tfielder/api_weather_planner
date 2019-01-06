require 'rails_helper'

describe 'api/v1/location' do
  it 'returns a successful response' do
    sample_response = {"coordinates": {"lat": 39.7392358,"lng": -104.990251},
                       "address": "Denver, CO, USA"
                      }
    VCR.use_cassette('coordinates_request_denver') do
      get '/api/v1/coordinates?location=denver,co'
    end

    expect(response).to be_successful
    expect(JSON.parse(response.body, :symbolize_names => true)).to eq(sample_response)
  end
end