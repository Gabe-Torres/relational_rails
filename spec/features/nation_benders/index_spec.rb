require "rails_helper"

RSpec.describe "nation benders index page" do 
    describe "when I visit /nations/:nation_id/benders" do
      it "shows each bender and attributes that is associated with what nation in our database" do
        nation_1 = Nation.create!(monarchy: false, name: "Air", population: 1)
        nation_2 = Nation.create!(monarchy: true, name: "Fire", population: 43254353)
        nation_3 = Nation.create!(monarchy: true, name: "Earth", population: 3435346)
        nation_4 = Nation.create!(monarchy: false, name: "Water", population: 3454365)

        bender_1 = nation_1.benders.create!(name: "Aang", age: 13, avatar: true, bending_style: "air")
        bender_2 = nation_2.benders.create!(name: "Zuko", age: 17, avatar: false, bending_style: "fire")
        bender_3 = nation_3.benders.create!(name: "Toph", age: 15, avatar: false, bending_style: "earth")
        bender_4 = nation_4.benders.create!(name: "Katara", age: 16, avatar: false, bending_style: "water")

        visit "/nations/#{nation_1.id}/benders"

        expect(page).to have_content(bender_1.name)
        expect(page).to have_content(bender_1.age)
        expect(page).to have_content(bender_1.avatar)
        expect(page).to have_content(bender_1.bending_style)

        visit "/nations/#{nation_2.id}/benders"

        expect(page).to have_content(bender_2.name)
        expect(page).to have_content(bender_2.age)
        expect(page).to have_content(bender_2.avatar)
        expect(page).to have_content(bender_2.bending_style)

        visit "/nations/#{nation_3.id}/benders"

        expect(page).to have_content(bender_3.name)
        expect(page).to have_content(bender_3.age)
        expect(page).to have_content(bender_3.avatar)
        expect(page).to have_content(bender_3.bending_style)

        visit "/nations/#{nation_4.id}/benders"

        expect(page).to have_content(bender_4.name)
        expect(page).to have_content(bender_4.age)
        expect(page).to have_content(bender_4.avatar)
        expect(page).to have_content(bender_4.bending_style)
      end
    end
end

# [X] done

# User Story 5, Parent Children Index 

# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes
# (data from each column that is on the child table)