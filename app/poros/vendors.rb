class Vendors
  attr_reader :name,
              :description,
              :contact_name,
              :contact_phone,
              :credit_accepted

  def initialize(vendor_data)
    # require 'pry'; binding.pry
    @name = vendor_data[:attributes][:name]
    @description = vendor_data[:attributes][:description]
    @contact_name = vendor_data[:attributes][:contact_name]
    @contact_phone = vendor_data[:attributes][:contact_phone]
    @credit_accepted = vendor_data[:attributes][:credit_accepted]
  end
end