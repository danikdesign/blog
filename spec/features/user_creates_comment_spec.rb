require 'rails_helper'

feature "Comment Creation" do
  before(:each) do
   sign_up
   create_article
  end

  scenario "allow user to create a comment" do
    visit '/articles/1'

    fill_in 'comment_body', with: 'Comment for Test title#0123'

    click_button 'Create Comment'

    expect(page).to have_content 'Comment for Test title#0123'
  end

end

