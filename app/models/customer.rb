class Customer < ActiveRecord::Base
  has_many :orders
  has_many :credit_cards

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  has_secure_password
end
