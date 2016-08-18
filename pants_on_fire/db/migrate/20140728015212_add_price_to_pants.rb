class AddPriceToPants < ActiveRecord::Migration
  def change
    add_column :pants, :price, :string
  end
end
