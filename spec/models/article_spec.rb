require 'rails_helper'

describe Article do

  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
    it { should validate_length_of(:title).is_at_most(140) }
    it { should validate_length_of(:text).is_at_most(4000) }
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'Lorem ipsum')
      expect(article.subject).to eq 'Lorem ipsum'
    end
  end

  describe "#last_comment" do
    it "returns last comment" do
      article = create(:article_with_comments)

      expect(article.last_comment.body).to eq "comment body 3"
    end
  end
end