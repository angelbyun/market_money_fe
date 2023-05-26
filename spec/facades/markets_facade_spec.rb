require 'rails_helper'

RSpec.describe MarketsFacade do
  describe 'instance methods' do
    it "#list_markets" do
      markets = MarketsFacade.new.list_markets

      expect(markets).to be_an(Array)

      market_data = markets.first

      expect(market_data).to be_a(Markets)
      expect(market_data.name).to be_a(String)
      expect(market_data.name).to eq("14&U Farmers' Market")
      expect(market_data.city).to be_a(String)
      expect(market_data.city).to eq("Washington")
      expect(market_data.state).to be_a(String)
      expect(market_data.state).to eq("District of Columbia")
    end

    it "#one_market" do
      market = MarketsFacade.new.one_market(322458)
      
      market_data = market

      expect(market_data.name).to be_a(String)
      expect(market_data.name).to eq("14&U Farmers' Market")
      expect(market_data.street).to be_a(String)
      expect(market_data.street).to eq("1400 U Street NW ")
      expect(market_data.city).to be_a(String)
      expect(market_data.city).to eq("Washington")
      expect(market_data.state).to be_a(String)
      expect(market_data.state).to eq("District of Columbia")
    end
  end
end