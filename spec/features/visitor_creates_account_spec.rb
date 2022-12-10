require 'rails_helper'

feature "Account Creation" do
  scenario "allow guest to create account" do
    sign_up

    expect(page).to have_content 'New'

  end
end

def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'user@example.com'
  fill_in :user_username, with: 'John'
  fill_in :user_password, with: 'secure123#!'
  fill_in :user_password_confirmation, with: 'secure123#!'

  click_button 'Sign up'
end