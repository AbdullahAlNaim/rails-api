class ApiClient
  BASE_URL = 'https://pokeapi.co/api/v2/'

  def self.fetch_data
    connection = Faraday.new(url: BASE_URL)
    response = connection.get('pokemon/charizard')

    if response.success?
      JSON.parse(response.body)
    else
      raise "Error #{response.status} - #{response.body}"
    end
  end
end