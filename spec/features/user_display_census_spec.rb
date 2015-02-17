require "rails_helper"

feature "Display census information" do
  scenario "all occurrences for a name" do
    name = Census.create!(name: "Mary", year: "2014", gender: "F", occurrences: 13)

    visit root_path

    expect(page).to have_content("Mary: 13 were born in 2014")
  end
end
