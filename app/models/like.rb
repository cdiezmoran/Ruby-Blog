class Like < ApplicationRecord
  belongs_to :article
  belongs_to :user

  validates :@like, uniqueness: {scope [:user, :article]}
end
