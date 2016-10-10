require 'rails_helper'

RSpec.feature "Deleting Article" do

    before do
      @article = Article.create(title: "First Article", body: "Body of first article")
    end

    scenario "A user creates a new article" do
    visit "/"

    click_link @article.title
    click_link "Delete Article"

    expect(page).to have_content("Article has been deleted")
    expect(current_path).to eq(articles_path)
  end
end