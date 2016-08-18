class DropMotorcycles < ActiveRecord::Migration
  def change
    drop_table :motorcycles
  end
end
