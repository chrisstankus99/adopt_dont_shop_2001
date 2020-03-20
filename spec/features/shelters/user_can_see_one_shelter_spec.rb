require 'rails_helper'

RSpec.describe "As a visitor when I visit '/shelters/:id'", type: :feature do
  it "the shelter with that id including the shelter's params" do
    shelter_1 = Shelter.create(name: "Dumb Friends League",
                               address: "123 Poppy Road",
                               city: "Cairo",
                               state: "Georgia",
                               zip: "80110")
    shelter_1 = Shelter.create(name: "Dumb Friends League",
                               address: "123 Poppy Road",
                               city: "Cairo",
                               state: "Georgia",
                               zip: "80110")

    visit "/shelters#{shelter_1.id}"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_1.address)
    expect(page).to have_content(shelter_1.city)
    expect(page).to have_content(shelter_1.state)
    expect(page).to have_content(shelter_1.zip)
    expect(page).to_not have_content(shelter_2.name)
  end
end


# User Story 3, Shelter Show
#
# As a visitor
# When I visit '/shelters/:id'
# Then I see the shelter with that id including the shelter's:
# - name
# - address
# - city
# - state
# - zip
