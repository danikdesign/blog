require 'rails_helper'

feature "Contact Creation" do
  scenario "allows access to contacts page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allows a guest to create contact" do
    visit '/contacts'

    fill_in 'contact_email', with: 'email@email.com'
    fill_in 'contact_message', with: 'Capybara testing message'
    click_button 'Send message'

    expect(page).to have_content 'Thank you!'
  end

end