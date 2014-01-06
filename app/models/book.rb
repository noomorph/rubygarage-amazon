class Book < ActiveRecord::Base
  has_many :ratings

  validates :title, :description, presence: true
  validates :price, numericality: { only_integer: false, greater_than_or_equal_to: 0 }
  validates :count_in_stock, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
