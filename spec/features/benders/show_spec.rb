require 'rails_helper'

RSpec.describe 'the benders show page' do
    describe "when I visit '/benders/:id" do 
      it "shows all attributes on show page" do
        nation_1 = Nation.create!(monarchy: false, name: "Air", population: 1)
        nation_2 = Nation.create!(monarchy: true, name: "Fire", population: 43254353)
        nation_3 = Nation.create!(monarchy: false, name: "Water", population: 3454365)
        bender_1 = nation_1.benders.create!(name: "Aang", age: 13, avatar: true, bending_style: "air")
        bender_2 = nation_2.benders.create!(name: "Zuko", age: 17, avatar: false, bending_style: "Fire")
        bender_3 = nation_2.benders.create!(name: "Katara", age: 16, avatar: false, bending_style: "Water")

        visit "/benders/#{bender_1.id}"

        expect(page).to have_content(bender_1.name)
        expect(page).to have_content(bender_1.age)
        expect(page).to have_content(bender_1.avatar)
        expect(page).to have_content(bender_1.bending_style)

        visit "/benders/#{bender_2.id}"

        expect(page).to have_content(bender_2.name)
        expect(page).to have_content(bender_2.age)
        expect(page).to have_content(bender_2.avatar)
        expect(page).to have_content(bender_2.bending_style)

        visit "/benders/#{bender_3.id}"

        expect(page).to have_content(bender_3.name)
        expect(page).to have_content(bender_3.age)
        expect(page).to have_content(bender_3.avatar)
        expect(page).to have_content(bender_3.bending_style)
      end
    end
end

# [X] done

# User Story 4, Child Show 

# As a visitor
# When I visit '/child_table_name/:id'
# Then I see the child with that id including the child's attributes
# (data from each column that is on the child table)