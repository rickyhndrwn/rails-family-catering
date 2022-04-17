class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :order_date
      t.float :total_price
      t.string :status

      t.timestamps
    end
  end
end
