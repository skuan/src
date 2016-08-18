class ChangePriceFromStringToInteger < ActiveRecord::Migration
  def change
    change_column :pants, :price, :integer
  end
end
