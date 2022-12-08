class Article < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :text, presence: true, length: { minimum: 10 }

  def subject
    title
  end
end
