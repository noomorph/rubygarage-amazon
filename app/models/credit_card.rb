class CreditCard < ActiveRecord::Base
  belongs_to :customer
  has_many :orders

  validates :first_name, :last_name, presence: true, length: { maximum: 50 }
  validates :cvv, :number, :expiration_month, :expiration_year, presence: true
  validates_inclusion_of :expiration_month, in: 1..12
  validates_inclusion_of :expiration_year, in: 2014..2100
end
