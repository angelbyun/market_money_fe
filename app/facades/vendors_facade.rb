class VendorsFacade
  def list_vendors(market_id)
    list_vendors_data(market_id).map do |vendor_data|
      Vendors.new(vendor_data)
    end
  end

  def one_vendor(id)
    Vendors.new(list_one_vendor_data(id))
  end

  private
  def list_vendors_data(market_id)
    @_list_vendors_data ||= service.list_vendors(market_id)[:data].first(10)
  end

  def list_one_vendor_data(id)
    @_list_one_vendor_data ||= service.one_vendor(id)[:data]
  end

  def service
    @_service ||= VendorsService.new
  end
end