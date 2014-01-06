class AddCustomerRefToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :customer, :reference
  end
end
