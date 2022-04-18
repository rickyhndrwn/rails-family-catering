class CreateJoinTableItemOrder < ActiveRecord::Migration[7.0]
  def change
    create_join_table :items, :orders, table_name: :carts do |t|
      t.index [:item_id, :order_id]
      t.index [:order_id, :item_id]
      t.float :price
      t.integer :quantity
      t.float :sub_total_price
    end
  end
end
