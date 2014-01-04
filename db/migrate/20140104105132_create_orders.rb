class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.datetime :completed_date
      t.integer :state

      t.timestamps
    end
  end
end
