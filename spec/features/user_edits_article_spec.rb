require 'rails_helper'

feature "Editing Article" do
  before(:each) do
    sign_up
    create_article
  end

  scenario "allow user to edit an article" do
    visit 'articles/1'

    click_link 'Edit'

    fill_in 'article_title', with: 'Edited title'
    fill_in 'article_text', with: 'Edited article text'

    click_button 'Send article'

    expect(page).to have_content 'Edited title'
  end

end
