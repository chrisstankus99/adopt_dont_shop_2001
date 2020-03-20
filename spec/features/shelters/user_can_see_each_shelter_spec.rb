require 'rails_helper'

RSpec.describe "As a visitor when I visit '/shelters'", type: :feature do
  it "I see a list of all shelter's names" do
    shelter_1 = Shelter.create(name: "Dumb Friends League")
    shelter_2 = Shelter.create(name: "Douglas County Animal Shelter")

    visit '/shelters'

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
  end
end

# As a visitor
# When I visit '/shelters'
# Then I see the name of each shelter in the system
