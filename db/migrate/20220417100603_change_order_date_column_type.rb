class ChangeOrderDateColumnType < ActiveRecord::Migration[7.0]
  def up
    change_column :orders, :order_date, :date
  end
  
  def down
    change_column :orders, :order_date, :string
  end
end
