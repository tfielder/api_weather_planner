class GoogleEventsRequest
  def initialize(location)
    @loction = location
    @google_events_response = get_google_events_response
    binding.pry
  end

  def events
    parse(@google_events_response)
  end

  private
  def connection(url)
    connect = Faraday.new(:url => "#{url}") do |f|
      f.request :url_encoded
      f.adapter Faraday.default_adapter
    end
  end

  def get_google_events_response
    binding.pry
    @google_events_response = connection("https://www.googleapis.com/customsearch/v1?key=#{ENV['google_search_api_key']}&cx=#{ENV['cx']}&q=#{@location}")
  end

  def parse(result)
    JSON.parse(result.body)
  end
end