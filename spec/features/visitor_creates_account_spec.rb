require 'rails_helper'

feature "Account Creation" do
  scenario "allow guest to create account" do
    sign_up

    expect(page).to have_content 'New'

  end
end