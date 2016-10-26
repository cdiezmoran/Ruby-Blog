class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ApplicationRecord
  has_many :articles
  has_many :comments
  has_many :likes

  validates :email, :username, uniqueness: true
  validates :username, :firstName, :lastName, :email, presence: true
  validates :email, email: true
end
