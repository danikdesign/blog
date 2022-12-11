require 'rails_helper'

feature "Article Creation" do
  before(:each) do
    sign_up
    create_article
  end

end