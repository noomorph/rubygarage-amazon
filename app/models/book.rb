class Book < ActiveRecord::Base
  validates :title, :description, presence: true
  has_many :ratings
end
