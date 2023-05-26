require 'rails_helper'

RSpec.describe 'markets show' do
  it 'displays a market with the full street address' do
    visit "/markets/322458"

    expect(page).to have_content("Markets Show")
    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content("1400 U Street NW")
    expect(page).to have_content("Washington")
    expect(page).to have_content("District of Columbia")
  end

  it 'displays markets vendors and link to vendor show page' do
    visit "/markets/322458"

    expect(page).to have_content("Vendors List")

    click_link "The Charcuterie Corner"

    expect(current_path).to eq("/vendors/55823")
  end
end