require "rails_helper"

feature "user creates person" do
  scenario "with valid data" do
    visit "/people/new"
    fill_in "First name",	with: "nitin" 
    click_button "Create Person"
    expect(page).to have_content("nitin")
    expect(page).to have_content("Person created.")
  end
end

