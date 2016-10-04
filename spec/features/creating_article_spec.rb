require 'rails_helper'

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do
    visit "/"

    click_link "New Article"

    fill_in "Title", with: "Creating first article"
    fil_in "Body", with: "Lorem Ipsum"
    click_button "Creating Article"

    expect(page).to have_content("Article has been created")
    expect(page_current_path).to eq(articles.path)
  end

end