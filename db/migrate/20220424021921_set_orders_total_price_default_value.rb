class SetOrdersTotalPriceDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :orders, :total_price, 1
  end
end
