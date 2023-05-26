require 'rails_helper'

RSpec.describe VendorsFacade do
  describe 'instance methods' do
    it "#list_vendors" do
      vendors = VendorsFacade.new.list_vendors(322458)

      expect(vendors).to be_an(Array)

      vendor_data = vendors.first

      expect(vendor_data).to be_a(Vendors)
      expect(vendor_data.name).to be_a(String)
      expect(vendor_data.name).to eq("The Charcuterie Corner")
    end
  end
end