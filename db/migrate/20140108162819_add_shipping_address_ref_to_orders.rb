class AddShippingAddressRefToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :shipping_address, index: true
  end
end
