require "rails_helper"

# [X] done

# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system
RSpec.describe "nation index page" do 
    describe "when I visit '/nations'" do
      it " shows the name of each nation in our database" do
        nation_2 = Nation.create!(monarchy: false, name: "Water", population: 4321)
        nation_1 = Nation.create!(monarchy: false, name: "Air", population: 1)
        nation_4 = Nation.create!(monarchy: true, name: "Earth", population: 54321)
        nation_3 = Nation.create!(monarchy: true, name: "Fire", population: 654321)
        
        visit "/nations"
        
        expect(page).to have_content(nation_2.name)
      end
      
      it "shows nations in order by date" do
        nation_2 = Nation.create!(monarchy: false, name: "Water", population: 4321)
        nation_1 = Nation.create!(monarchy: false, name: "Air", population: 1)
        nation_4 = Nation.create!(monarchy: true, name: "Earth", population: 54321)
        nation_3 = Nation.create!(monarchy: true, name: "Fire", population: 654321)

        visit "/nations"
        # save_and_open_page
        expect(page).to have_content("#{nation_2.name} created_at:#{nation_2.created_at}")
        expect(page).to have_content("#{nation_1.name} created_at:#{nation_1.created_at}")
        expect(page).to have_content("#{nation_4.name} created_at:#{nation_4.created_at}")
        expect(page).to have_content("#{nation_3.name} created_at:#{nation_3.created_at}")
      end

#       [X] done

# User Story 6, Parent Index sorted by Most Recently Created 

# As a visitor
# When I visit the parent index,
# I see that records are ordered by most recently created first
# And next to each of the records I see when it was created
    end

#     [X] done

# User Story 9, Parent Index Link

# As a visitor
# When I visit any page on the site
# Then I see a link at the top of the page that takes me to the Parent Index
    describe "when I visit '/'" do
      it "shows a link at the top of the page to the nations index" do
        visit "/"

        expect(page).to have_link("Nation Index", href: "/nations")
      end
    end
end