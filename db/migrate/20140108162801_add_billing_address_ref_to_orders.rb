class AddBillingAddressRefToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :billing_address, index: true
  end
end
