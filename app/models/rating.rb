class Rating < ActiveRecord::Base
  validates_inclusion_of :score, in: 1..10
  belongs_to :book
end
