require 'rails_helper'

RSpec.describe 'markets index' do
  it 'lists all markets with their name, city, and state' do
    visit "/markets"

    expect(page).to have_content("Markets Index")
    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content("Washington")
    expect(page).to have_content("District of Columbia")
  end
end