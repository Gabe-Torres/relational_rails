require "rails_helper"

# [X] done

# User Story 3, Child Index 

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)
RSpec.describe "bender index page" do 
    describe "when I visit '/benders'" do
      it "shows the name and attributes of each bender in our database" do
        nation_2 = Nation.create!(monarchy: true, name: "Fire", population: 43254353)
        bender_2 = nation_2.benders.create!(name: "Zuko", age: 17, avatar: false, bending_style: "Fire")

        visit "/benders"

        expect(page).to have_content(bender_2.name)
        expect(page).to have_content(bender_2.age)
        expect(page).to have_content(bender_2.avatar)
        expect(page).to have_content(bender_2.bending_style)
      end
    end

    #     [X] done

    # User Story 8, Child Index Link

    # As a visitor
    # When I visit any page on the site
    # Then I see a link at the top of the page that takes me to the Child Index

    describe "when I visit '/'" do
      it "shows a link to the benders index at the top of the page" do
        visit "/"

        expect(page).to have_link("Bender Index", href: "/benders" )
      end
    end
end
