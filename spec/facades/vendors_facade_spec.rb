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

    it "#one_vendor" do
      vendor = VendorsFacade.new.one_vendor(55823)
      
      vendor_data = vendor

      expect(vendor_data.name).to be_a(String)
      expect(vendor_data.name).to eq("The Charcuterie Corner")
      expect(vendor_data.description).to be_a(String)
      expect(vendor_data.description).to eq("Vendor selling a variety of artisanal cured meats and sausages.")
      expect(vendor_data.contact_name).to be_a(String)
      expect(vendor_data.contact_name).to eq("Claudie Langworth III")
      expect(vendor_data.contact_phone).to be_a(String)
      expect(vendor_data.contact_phone).to eq("1-147-179-9747")
      expect(vendor_data.credit_accepted).to eq(false)
    end
  end
end