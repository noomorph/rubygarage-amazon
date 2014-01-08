class AddCustomerRefToRatings < ActiveRecord::Migration
  def change
    add_reference :ratings, :customer, index: true
  end
end
