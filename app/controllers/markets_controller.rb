class MarketsController < ApplicationController
  def index
    @markets = MarketsFacade.new.list_markets
  end

  def show
    @market = MarketsFacade.new.one_market(params[:id])
    @vendors = VendorsFacade.new.list_vendors(params[:id])
    # require 'pry'; binding.pry
  end

  private
  def facade
    facade = MarketsFacade.new(params[:id])
  end
end