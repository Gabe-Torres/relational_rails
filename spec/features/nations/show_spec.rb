require "rails_helper"
# [X] done

# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)

RSpec.describe "nation show page" do 
    describe "when I visit '/nations/:id'" do
      it "shows all attributes on show page " do 
        nation_1 = Nation.create!(monarchy: false, name: "Air", population: 1)

        visit "/nations/#{nation_1.id}"

        expect(page).to have_content(nation_1.monarchy)
        expect(page).to have_content(nation_1.name)
        expect(page).to have_content(nation_1.population)
      end
    end
end
# [ ] done

# User Story 7, Parent Child Count

# As a visitor
# When I visit a parent's show page
# I see a count of the number of children associated with this parent

RSpec.describe "nation show page" do 
  describe "when I visit '/nations/:id'" do
    it "shows count of the number of benders associated with a nation" do
      air_nation = Nation.create!(monarchy: false, name: "Air", population: 1)
      avatar =  air_nation.benders.create!(name: "Aang", age: 13, avatar: true, bending_style: "air")
      air_bender_1 =  air_nation.benders.create!(name: "Jetsun", age: 123, avatar: false, bending_style: "air")
      flying_bison =  air_nation.benders.create!(name: "Appa", age: 464, avatar: false, bending_style: "air")

      visit "/nations/#{air_nation.id}"
    
      expect(page).to have_content("Bender_count: 3")
    end
  end
end