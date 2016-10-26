class Article < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :title, :content, :user_id, presence: true
  validates :title, length: { maximum: 30 }
end
