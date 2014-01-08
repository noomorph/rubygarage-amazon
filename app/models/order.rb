class Order < ActiveRecord::Base
  belongs_to :customer
  has_one :billing_address, class_name: Address
  has_one :shipping_address, class_name: Address

  validates_inclusion_of :state, in: 1..3
  validates :total_price, numericality: { only_integer: false, greater_than_or_equal_to: 0 }, allow_nil: true
end
