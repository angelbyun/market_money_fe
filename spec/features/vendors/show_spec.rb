require 'rails_helper'

RSpec.describe 'vendors show' do
  it 'displays a vendor name with its contact info, credit accepted, and description of what they sell' do
    visit "/vendors/55823"

    expect(page).to have_content("Vendors Show")
    expect(page).to have_content("The Charcuterie Corner")
    expect(page).to have_content("Vendor selling a variety of artisanal cured meats and sausages.")
    expect(page).to have_content("Claudie Langworth III")
    expect(page).to have_content("1-147-179-9747")
  end
end