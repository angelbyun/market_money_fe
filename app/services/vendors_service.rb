require 'faraday'

class VendorsService
  def list_vendors(market_id)
    get_url("api/v0/markets/#{market_id}/vendors")
  end

  private
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://localhost:3000/') do |faraday|
      faraday.headers = { 'CONTENT_TYPE' => 'application/json' }
    end
  end
end