class DarkSkyRequest
  def initialize(location)
    @lat = location["lat"]
    @long = location["lng"]
    @dark_sky_response = get_dark_sky_response
  end

  def weather
    parse(@dark_sky_response)
  end

  private

  def connection(url)
    connect = Faraday.new(:url => "#{url}") do |f|
      f.request :url_encoded
      f.adapter Faraday.default_adapter
    end
  end

  def get_dark_sky_response
    @dark_sky_response = connection("https://api.darksky.net/forecast/#{ENV['dark_sky_api_key']}/#{@lat},#{@long}").get
  end

  def parse(result)
    JSON.parse(result.body)
  end

  def get_weather
    parse(@dark_sky_response)
  end
end