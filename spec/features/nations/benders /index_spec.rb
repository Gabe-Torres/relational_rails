require "rails_helper"

RSpec.describe "Nations benders index" do 
  before :each do
    @fire_nation = Nation.create!(name: "Fire", monarchy: true, population: 654321)
    @fire_prince = @fire_nation.benders.create!(name: "Zuko", age: 17, avatar: false, bending_style: "Fire")
    @fire_avatar = @fire_nation.benders.create!(name: "Roku", age: 70, avatar: true, bending_style: "Fire")
  end
  
  it "show page has bender index link" do 
    visit "/nations/#{@fire_nation.id}"
    click_link "Benders"

    expect(page).to have_content(@fire_prince.name)
    expect(page).to have_content(@fire_avatar.name)
  end
end


# [X] done

# User Story 10, Parent Child Index Link

# As a visitor
# When I visit a parent show page ('/parents/:id')
# Then I see a link to take me to that parent's `child_table_name` page ('/parents/:id/child_table_name')