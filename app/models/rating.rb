class Rating < ActiveRecord::Base
  belongs_to :book
  belongs_to :customer

  validates_inclusion_of :score, in: 1..10
end
