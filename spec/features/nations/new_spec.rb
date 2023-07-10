require "rails_helper"
    # [X] done

    # User Story 11, Parent Creation 
    
    # As a visitor
    # When I visit the Parent Index page
    # Then I see a link to create a new Parent record, "New Parent"
    # When I click this link
    # Then I am taken to '/parents/new' where I  see a form for a new parent record
    # When I fill out the form with a new parent's attributes:
    # And I click the button "Create Parent" to submit the form
    # Then a `POST` request is sent to the '/parents' route,
    # a new parent record is created,
    # and I am redirected to the Parent Index page where I see the new Parent displayed.

RSpec.describe "the Nation creation" do
  it "links to the new page from the nation index" do
      visit '/nations'

      click_link('New Nation')

      expect(current_path).to eq("/nations/new")
  end

  it "can create a new nation" do 
    visit 'nations/new'

    fill_in('Name', with: 'Fire Nation')
    # fill_in('Population', with: 654321)
    # fill_in('Monarchy', with: true)
    click_button('Create Nation')

    expect(current_path).to eq('/nations')
    expect(page).to have_content("Fire Nation")
    # expect(page).to have_content(654321)
    # expect(page).to have_content(true)
  end
end