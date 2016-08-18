class AddMaterialAndFlyToPants < ActiveRecord::Migration
  def change
    add_column :pants, :material, :string
    add_column :pants, :fly, :string
  end
end
