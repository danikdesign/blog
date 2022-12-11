require 'rails_helper'

feature "Article Creation" do
  before(:each) do
    sign_up
  end

  scenario "allow user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t("articles.new_article")
  end

  scenario "allow user to visit new article page" do
    visit new_article_path

    fill_in 'article_title', with: 'Test title#0123'
    fill_in 'article_text', with: 'Autem rerum itaque mollitia iure nesciunt libero non rerum velit at cupiditate minima doloremque odio nesciunt.'

    click_button 'Create article'

    expect(page).to have_content 'Test title#0123'
  end

end