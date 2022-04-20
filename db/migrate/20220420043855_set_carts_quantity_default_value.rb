class SetCartsQuantityDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :carts, :quantity, 1
  end
end
