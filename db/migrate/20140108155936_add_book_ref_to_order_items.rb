class AddBookRefToOrderItems < ActiveRecord::Migration
  def change
    add_reference :order_items, :book, index: true
  end
end
