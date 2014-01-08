class Address < ActiveRecord::Base
  belongs_to :country

  validates :phone, presence: true, length: { maximum: 30 }
  validates :zipcode, presence: true, length: { maximum: 10 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :line1, presence: true, length: { maximum: 50 }
  validates :line1, presence: true, length: { maximum: 50 }
  validates :line2, length: { maximum: 50 }
  validates :line3, length: { maximum: 50 }
end
