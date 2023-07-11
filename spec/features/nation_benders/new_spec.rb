require 'rails_helper'
# [ ] done

# User Story 13, Parent Child Creation 

# As a visitor
# When I visit a Parent Children Index page
# Then I see a link to add a new adoptable child for that parent "Create Child"
# When I click the link
# I am taken to '/parents/:parent_id/child_table_name/new' where I see a form to add a new adoptable child
# When I fill in the form with the child's attributes:
# And I click the button "Create Child"
# Then a `POST` request is sent to '/parents/:parent_id/child_table_name',
# a new child object/row is created for that parent,
# and I am redirected to the Parent Childs Index page where I can see the new child listed

RSpec.describe "the child creation" do 
  it "has a link to create a new nation bender" do 
    nation_1 = Nation.create!(monarchy: false, name: "Air", population: 1)

    visit "/nations/#{nation_1.id}/benders"

    click_link("Create Bender")

    expect(current_path).to eq("/nations/#{nation_1.id}/benders/new")
  end

  it "can create a new benders" do 
      nation_1 = Nation.create!(monarchy: false, name: "Air", population: 1)

      visit "/nations/#{nation_1.id}/benders"

      click_link("Create Bender")

      fill_in(:name, with: "Aang")
      click_button("Create Bender")

      expect(current_path).to eq("/nations/#{nation_1.id}/benders")
      expect(page).to have_content("Aang")
  end
end