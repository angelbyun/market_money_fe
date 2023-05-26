class VendorsController < ApplicationController
  def show
    @vendor = VendorsFacade.new.one_vendor(params[:id])
  end
end