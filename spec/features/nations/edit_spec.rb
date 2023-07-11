require "rails_helper"
# [X] done

# User Story 12, Parent Update 

# As a visitor
# When I visit a parent show page
# Then I see a link to update the parent "Update Parent"
# When I click the link "Update Parent"
# Then I am taken to '/parents/:id/edit' where I  see a form to edit the parent's attributes:
# When I fill out the form with updated information
# And I click the button to submit the form
# Then a `PATCH` request is sent to '/parents/:id',
# the parent's info is updated,
# and I am redirected to the Parent's Show page where I see the parent's updated info

RSpec.describe 'the nation edit' do 
  it 'links to the edit page ' do 
    nation_2 = Nation.create!(monarchy: false, name: "Water", population: 4321)
    visit '/nations'

    click_button "Update #{nation_2.name}"

    expect(current_path).to eq("/nations/#{nation_2.id}/edit")
  end

  it 'can edit the nation' do 
    nation_2 = Nation.create!(monarchy: false, name: "Wat", population: 4321)

    visit "/nations"

    expect(page).to have_content("Wat")

    click_button "Update Wat"

    fill_in "Name", with: "Water"
    click_button 'Update Nation'

    expect(current_path).to eq("/nations")
    expect(page).to have_content("Water")
  end
end