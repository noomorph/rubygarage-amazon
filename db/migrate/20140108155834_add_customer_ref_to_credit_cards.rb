class AddCustomerRefToCreditCards < ActiveRecord::Migration
  def change
    add_reference :credit_cards, :customer, index: true
  end
end
