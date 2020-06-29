class Contact < ApplicationRecord

  attr_accessor :email
  validates :email, presence: true
  validates :message, presence: true
end
