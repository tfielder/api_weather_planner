class GoogleGeoRequest

  def initialize(location)
    @location = location
    @google_response = get_google_geo_response
    @coordinates = calculate_coordinates
    @google_address = get_address
  end

  def info
    {
      "coordinates": @coordinates,
      "address": @google_address
    }
  end

  private
  def connection(url)
    connect = Faraday.new(:url => "#{url}") do |f|
      f.request :url_encoded
      f.adapter Faraday.default_adapter
    end
  end

  def get_google_geo_response
    @google_response = connection('https://maps.googleapis.com/maps/api/geocode/').get 'json', {:address => "#{@location}", :key => "#{ENV['google_api_key']}"}
  end

  def parse(result)
    JSON.parse(result.body)
  end

  def calculate_coordinates
    parse(@google_response)["results"][0]["geometry"]["location"]
  end

  def get_city
    @google_city = parse(@google_response)["results"][0]["address_components"][0]["long_name"]
  end

  def get_state
    @google_city = parse(@google_response)["results"][0]["address_components"][2]["short_name"]
  end

  def get_country
    @google_country = parse(@google_response)["results"][0]["address_components"][3]["long_name"]
  end

  def get_address
    @google_address = parse(@google_response)["results"][0]["formatted_address"]
  end
end