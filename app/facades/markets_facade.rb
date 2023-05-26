class MarketsFacade
  def initialize

  end

  def list_markets
    list_markets_data.map do |market_data|
      Markets.new(market_data)
    end
  end

  def one_market(market_id)
    # require 'pry'; binding.pry
    Markets.new(list_one_market_data(market_id))
  end

  private
  def list_markets_data
    @_list_markets_data ||= service.list_markets[:data].first(10)
  end

  def list_one_market_data(market_id)
    @_list_one_market_data ||= service.one_market(market_id)[:data]
  end

  def service
    @_service ||= MarketsService.new
  end
end