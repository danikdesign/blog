require 'rails_helper'

feature "Comment Creation" do
  before(:each) do
   sign_up
 end

 scenario "allow user to visit article page with comments" do
   visit '/articles/1'
   expect(page).to have_content 'Test title#0123'
 end

end

