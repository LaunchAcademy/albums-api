require "rails_helper"

feature "albums" do
  scenario "view index of albums at root path" do
    albums = create_list(:album, 5)

    visit root_path
    albums.each { |a| expect(page).to have_content(a.title) }
  end
end
